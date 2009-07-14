# Sbopkg queuefile for multimedia support
# Tested on Slackware 13.0
# Based on work by antiwire

a52dec
aften
libavc1394
libdca
libiec61883
libmpcdec
libmpeg2
libsamplerate
libsndfile
twolame
mjpegtools
soundtouch
divx4linux
libdvdcss
dvdauthor
libdv
libdvbpsi
#13.0 includes the next
#libdvdread
libdvdnav
libdvdplay
vcdimager
vobcopy
@ffmpeg
libquicktime
transcode | MJPEGTOOLS=yes
mplayer-codecs-all
# 13.0 includes the next but lacks libdvdcss support.  Rebuild for CSS.
mplayer
flash-player-plugin
kino | QUICKTIME=yes
avidemux | QT=yes
k9copy
@audacity
