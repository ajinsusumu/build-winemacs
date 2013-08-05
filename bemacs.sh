#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && /bin/pwd )"
$DIR/sanitize.sh
$DIR/bcyg.sh
/cygdrive/c/mingw/msys/1.0/bin/bash `/bin/cygpath -m $DIR/b32.sh`
/cygdrive/c/mingw/msys/1.0/bin/bash `/bin/cygpath -m $DIR/b64.sh`
