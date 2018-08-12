#!/bin/bash

SELF="${BASH_SOURCE[0]}"

function extract() {
    ENDER="SCRIPT_END"
    ENDER="${ENDER}_HERE"
    scriptbytes="$(sed "/$ENDER/q" "$SELF" | wc -c)"
    tail -c "+$((scriptbytes+1))" "$SELF"
}

if [ ! -z "$ELJ_EXTRACT" ]; then
    echo "Extracting contents to '$ELJ_EXTRACT'" >&2
    extract >"$ELJ_EXTRACT"
    exit 0
else
    DUMP_ARG=""
    if [ ! -z "$ELJ_DUMP" ]; then
        DUMP_ARG="--dump"
    fi
    exec elj-run %ELJ_ARGS% $DUMP_ARG --program "$SELF" %MOD_SPEC% -- %ELJ_POSTARGS% "$@"
fi

exit 0
SCRIPT_END_HERE
