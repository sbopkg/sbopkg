# $Id: README-renames.d 555 2009-05-08 21:47:18Z chess.griffin $

The /etc/sbopkg/renames.d directory is the directory that holds files
associated with renamed software in the SlackBuilds.org repository.  The
default file that is installed with sbopkg is '50-default'.  This file will be
overwritten each time sbopkg is upgraded, so do not make local edits to it.
Instead, create other files with a higher or lower number than 50-default and
list your renamed files in those local files.  The files are loaded in
alphabetical order (like the files in /etc/fonts/conf.d) so 'priority'
is determined from low number to high and the first match wins, so:

$ cat /etc/sbopkg/renames.d/10-local
foo=bar

will override anything in a higher-numbered file, including anything in
50-default, such as:

$ cat /etc/sbopkg/renames.d/50-default
foo=baz

Renames are written in the following format:

oldname=newname
