#!/bin/bash
set -x
typeset timeout=$1
shift
$@ & # command which might hang
typeset cmd_pid=$!
#sleep $timeout && (echo "Timed Out";kill -TERM $cmd_pid) 2>/dev/null &
sleep $timeout && (echo "Timed Out"; kill -9 $cmd_pid) 2>/dev/null &
typeset sleep_pid=$!
wait $cmd_pid 2>/dev/null
kill -9 $sleep_pid 2>/dev/null
