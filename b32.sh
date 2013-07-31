#!/bin/bash
PATH=/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=bemacs-$namebase.log
cd /d/emacs.bzr
/c/cygwin/bin/sh -c "export PATH=/bin:/usr/bin;bzr clean-tree --force --ignored --unknown --detritus;bzr revert;bzr pull" > /d/$logfilename 2>&1
#bzr revert >> /d/$logfilename 2>&1
#bzr pull >> /d/$logfilename 2>&1
./autogen.sh >> /d/$logfilename 2>&1
mv /d/emacs-build /d/emacs-build.$namebase
mkdir /d/emacs-build
cd /d/emacs-build
#../emacs.bzr/configure --prefix=/home/yj >> /d/$logfilename 2>&1
CPPFLAGS='-DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/nt/msysconfig.sh --prefix=c:/emacs/emacs-bzr --without-xpm --without-jpeg --without-tiff --without-gif --without-png --enable-checking >> /d/$logfilename 2>&1
make >> /d/$logfilename 2>&1
