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
    if [ ! -z "$ELJ_FLUSH" ] || [ -f "$SELF.flush" ]; then
        rm -f "$SELF.flush"
        elj-run %ELJ_ARGS% --appcds-flush --program "$SELF" -- %ELJ_POSTARGS% "$@"
    fi
    exec elj-run %ELJ_ARGS% --program "$SELF" -- %ELJ_POSTARGS% "$@"
fi

exit 1
SCRIPT_END_HERE
