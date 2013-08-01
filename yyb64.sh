#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=/bin:/c/yypkg_x86_64/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=b64-$namebase.log
cd /d/emacs.bzr
#/c/cygwin/bin/sh -c "PATH=/bin:/usr/bin;bzr clean-tree --force --ignored --unknown --detritus;bzr revert;bzr pull" > /d/$logfilename 2>&1
#patch -p1 < $DIR/x64.patch >> /d/$logfilename 2>&1
./autogen.sh >> /d/$logfilename 2>&1
mv /d/bx64 /d/bx64.$namebase
mkdir /d/bx64
cd /d/bx64
#CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/nt/msysconfig.sh --without-xpm --without-jpeg --without-tiff --without-gif --without-png --enable-checking >> /d/$logfilename 2>&1
CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/nt/msysconfig.sh --host=x86_64-w64-mingw32 --enable-checking --with-xml2 >> /d/$logfilename 2>&1
make >> /d/$logfilename 2>&1
make check >> /d/$logfilename 2>&1
