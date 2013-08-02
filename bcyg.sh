#!/bin/bash
PATH=/bin:/usr/bin
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=/cygdrive/d/bcyg-$namebase.log
mv /cygdrive/d/bcyg /cygdrive/d/bcyg.$namebase
mkdir /cygdrive/d/bcyg
cd /cygdrive/d/bcyg
CPPFLAGS='-DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ../emacs.bzr/configure --with-w32 >> $logfilename 2>&1
make -j4 >> $logfilename 2>&1
make -k check >> $logfilename 2>&1
