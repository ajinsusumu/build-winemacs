#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/sanitize.sh
$DIR/b32.sh
$DIR/b64.sh
