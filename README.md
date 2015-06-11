# sbopkg
**Slackbuilds.org Package Browser**

Sbopkg is a command-line and dialog-based tool to synchronize with the SlackBuilds.org ("SBo") repository, a collection of third-party SlackBuild scripts to build Slackware packages. Sbopkg is actively maintained and a new version is released one or more times per Slackware/SBo release. Numerous people have contributed diffs, bug reports, and helpful suggestions and they are all mentioned in the THANKS file in /usr/doc/sbopkg-$VERSION. This utility would not be anywhere close to its present state without the help of these folks.

**Features**

Sbopkg will allow the user to:

* Create, browse, and search a local copy of the SBo repository for any supported Slackware version.
* Read the SBo ChangeLog.txt.
* Display a list of all SBo packages installed on the user's system.
* Display potential updates to packages installed from SlackBuilds.org.
* View the README, SlackBuild, .info, and slack-desc files for each individual piece of software in the repository.
* Copy the original .info file or SlackBuild for editing.
* Automatically download the source code, check the md5sum, and build or build and install a Slackware package from either the original .info file and SlackBuild or the locally-edited copies.
* Batch queue packages for building or building and installing.
* Load, save, and use sbopkg queuefiles (.sqf), several of which are included with the package.
* View the contents of the cache directory (where source code tarballs are stored).
* View the permanent build log that is optionally maintained to keep a record of the entire compilation process.
* Check for an update to sbopkg itself.

Sbopkg will not check dependencies since that is not a feature native to Slackware. Sbopkg is one thing and one thing only: a medium to easily browse a local copy of the SlackBuilds.org repository and build packages from it.

Sbopkg can be also be used strictly from the command line without the dialog interface, to perform most, if not all, of the same functions listed above. Typing sbopkg -h will display the command line options.

Please note that while sbopkg has performed well for many users, it is still in a testing phase. Please do not use in a production environment and please use a separate copy/mirror of SlackBuilds.org, or at least make a backup of any changes to your local copy/mirror before using sbopkg.
