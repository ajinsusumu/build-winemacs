#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && /bin/pwd )"

export SRC=/cygdrive/d/emacs.bzr
export BUILD=/cygdrive/d/build-winemacs/build
$DIR/sanitize.sh
$DIR/bcyg.sh
$DIR/bcygm64.sh

export SRC=/d/emacs.bzr
export BUILD=/d/build-winemacs/build
/cygdrive/c/mingw/msys/1.0/bin/bash --norc --noprofile `/bin/cygpath -m $DIR/b32.sh`
/cygdrive/c/mingw/msys/1.0/bin/bash --norc --noprofile `/bin/cygpath -m $DIR/b64.sh`
