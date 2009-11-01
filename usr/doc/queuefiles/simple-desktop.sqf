# Sbopkg queuefile for a simple desktop: openbox-plus, abiword,
# gnucash, audacity, and multimedia queuefiles are included.
# Created by Chess Griffin
#
# This queuefile is intended to demonstrate how the sbopkg queuefiles
# can be used.  Several queuefiles have been created for certain
# specific applications.  In this case, there are separate queuefiles
# for abiword, audacity, gnucash, and openbox with some additional
# extras.  You can see these separate queuefiles by going up one level
# to http://sbopkg.org/queues/12.2.  Anyway, this 'simple-desktop'
# queuefile brings them all together.  The '@' means that the listed
# item is a recursive queuefile.  Essentially, it just tells sbopkg to
# load another queuefile.  In this way, you can have separate
# queuefiles for certain applications and then a 'master' queuefile
# that brings them all together.

@abiword
@audacity
@gnucash
@openbox-plus
