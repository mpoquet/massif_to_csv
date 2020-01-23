#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "usage: $0 <MASSIF-FILE>"
    exit 1
fi
massif_file="$1"

echo 'n,time,total,heap,heap_extra,stack' && \
ms_print "${massif_file}" | \
    sed -E 's/^\s+([0-9,]+)\s+([0-9,]+)\s+([0-9,]+)\s+([0-9,]+)\s+([0-9,]+)\s+([0-9,]+).*$/\1 \2 \3 \4 \5 \6/p' -n | \
    sed -E 's/,//g' | \
    sed -E 's/ /,/g'
