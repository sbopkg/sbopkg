# bash completion for sbopkg tool

_sbopkg()
{
    COMPREPLY=()

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    if [[ "$cur" == -* ]]; then
        COMPREPLY=( $( compgen -W '-b -c -d -e -f -g -h -i -k -l \
                      -o -P -p -q -R -r -s -u -V -v' -- "$cur" ) )
        return 0
    fi

    case $prev in
        -e)
            COMPREPLY=( $( compgen -W 'ask continue stop' -- "$cur" ) )
            return 0
            ;;
        -f)
            COMPREPLY=( $( compgen -f -- "$cur" ) )
            return 0
            ;;
        -d)
            COMPREPLY=( $( compgen -d -- "$cur" ) )
            return 0
            ;;
        -V)
            COMPREPLY=( $( compgen -W "? \
                $(sbopkg -V ? 2>&1 | cut -s -f1)" -- "$cur" ) )
            return 0
            ;;
        -i|-b)
            ;;
        *)
            return 0
            ;;
    esac

    local config="/etc/sbopkg/sbopkg.conf"

    for (( i=${#COMP_WORDS[@]}-1; i>0; i-- )); do
        if [[ "${COMP_WORDS[i]}" == -f ]]; then
            config="${COMP_WORDS[i+1]}"
            break
        fi
    done

    if [ ! -r "$config" ]; then
        return 0
    fi

    . $config

    for (( i=1; i<${#COMP_WORDS[@]}; i++ )); do
        case "${COMP_WORDS[i]}" in
            -V)
                REPO_NAME="${COMP_WORDS[i+1]%%/*}"
                REPO_BRANCH="${COMP_WORDS[i+1]#*/}"
                ;;
            -d)
                REPO_ROOT="${COMP_WORDS[i+1]}"
                ;;
        esac
    done

    if [ -d "$QUEUEDIR" ]; then
        local queues=($(cd $QUEUEDIR; compgen -f -X "!*.sqf" -- "$cur"))
    fi

    if [ -r "$REPO_ROOT/$REPO_NAME/$REPO_BRANCH/SLACKBUILDS.TXT" ]; then
        COMPREPLY=($(sed -ne "/^SLACKBUILD NAME: $cur/{s/^SLACKBUILD NAME: //;p}" \
                         $REPO_ROOT/$REPO_NAME/$REPO_BRANCH/SLACKBUILDS.TXT)
                   ${queues[@]})
    elif [ -d "$REPO_ROOT/$REPO_NAME/" ]; then
        COMPREPLY=($(find $REPO_ROOT/$REPO_NAME \
                          \! -path $REPO_ROOT/$REPO_NAME/'.git/*' \
                          -mindepth 2 -maxdepth 2 \
                          -type d -name $cur\* \
                          -printf '%f\n')
                   ${queues[@]})
    fi
} && complete -o filenames -F _sbopkg sbopkg
