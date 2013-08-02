#!/bin/bash
PATH=/bin:/c/strawberry/c/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=b64-$namebase.log
mv /d/bx64 /d/bx64.$namebase
mkdir /d/bx64
cd /d/bx64
CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/nt/msysconfig.sh --with-xml2 --host=x86_64-w64-mingw32 --enable-checking >> /d/$logfilename 2>&1
make >> /d/$logfilename 2>&1
make -k check >> /d/$logfilename 2>&1
