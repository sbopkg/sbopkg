######################################################################
# Unofficially suggested build order for almost everything that is
# AV/DVD related at SBo. After all of this, k3b #should support
# reading/ripping CSS DVDs, DVD creation with menus, and VCD creation.
# MPlayer will support quicktime #and reading encrypted DVDs,
# k9copy/avidemux2/kino/audacity will have nearly have a full set of
# encodings supported as well. This is only a suggested build list and
# order and is not directly endorsed by slackbuilds.org or sbopkg.
# YMMV.  Courtesy of antiwire
######################################################################
a52dec
aften
amrnb
amrwb
libmp4v2
faac
faad2
lame
libavc1394
libdca
libiec61883
libmpcdec
libmpeg2
libsamplerate
libsndfile
twolame
openjpeg
mjpegtools
schroedinger
speex
soundtouch
xvidcore
yasm
x264
divx4linux
libdvdcss
dvdauthor
libdv
libdvbpsi
#current/13.0 includes the next
libdvdread
libdvdnav
libdvdplay
vcdimager
vobcopy
ffmpeg | AMRNB=yes AMRWB=yes
libquicktime
transcode | MJPEGTOOLS=yes
mplayer-codecs
# current/13.0 includes the next but lacks libdvdcss support and
# codec package.  Rebuild for CSS required.
mplayer
kino | QUICKTIME=yes
avidemux | QT4=yes
k9copy
wxGTK
audacity
