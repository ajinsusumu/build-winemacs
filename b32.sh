#!/bin/bash
PATH=/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=b32-$namebase.log
mv /d/bx32 /d/bx32.$namebase
mkdir /d/bx32
cd /d/bx32
CPPFLAGS='-DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/nt/msysconfig.sh --enable-checking >> /d/$logfilename 2>&1
make >> /d/$logfilename 2>&1
make -k check >> /d/$logfilename 2>&1
