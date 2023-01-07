#!/bin/sh

if [ $# -lt 1 ]; then
        echo $0 need a parameter
        exit 0
fi
for i in "$@"; do
    ADDR=$i
    TMPSTR=`ping -c 1 ${ADDR} | sed '1{s/[^(]*(//;s/).*//;q}'`
    echo ${TMPSTR}"    "${ADDR}
done
