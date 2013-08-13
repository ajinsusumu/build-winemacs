#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && /bin/pwd )"


export SRC=/cygdrive/d/emacs.bzr
export BUILD=/cygdrive/d/build-winemacs/build

$DIR/sanitize.sh

$DIR/bcygwin.sh

DIR=`echo $DIR|/bin/sed -e "s,^/cygdrive,,"`
export SRC=`echo $SRC|/bin/sed -e "s,^/cygdrive,,"`
export BUILD=`echo $BUILD|/bin/sed -e "s,^/cygdrive,,"`
#echo $DIR
#echo $SRC
#echo $BUILD
#ggg
/cygdrive/c/mingw/msys/1.0/bin/bash --norc --noprofile $DIR/bmingw.sh
