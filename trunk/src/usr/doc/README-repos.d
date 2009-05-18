In sbopkg documentation and code, a "repository" is a remote service used as
a source of scripts. For example, slackbuilds.org is a repository.
Every repository has one or more "branches". Branches consist of a single
tree of scripts. For example, slackbuilds.org has a 11.0 branch, a 12.0 branch
and so on.
The tool-specific code abstracts the differences induced by the use of
different technologies to provide scripts.

repos.d is a directory containing files defining the sbopkg-supported
repositories and branches. All *.repo files are scanned in alphabetical order.
Every line in each file defines a branch. The line is compound of the
following fields:
- REPOSITORY (a _short_ name identifying the repository)
- BRANCH (a _short_ name identifying the branch of that repository)
- DESCRIPTION (a <50 chars description, which _must_be_double_quoted_)
- TAG (the packages' tag)
- TOOL (rsync, git or "", is the tool able to check out the repository/branch)
- LINK (the tool-dependent link to the branch)

If TOOL is "", then it won't be possible to automatically update the branch
(it has no upstream). The LINK format is essentially what is required to
be passed to the specified TOOL. In case of git links, it _must_ be in the
form url@branch. If TOOL is "", LINK is ignored (but _must_ be present).

Lines _containing_ # are ignored when parsing the files. Lines containing a
single quote (') or backslashes (\) aren't allowed.
