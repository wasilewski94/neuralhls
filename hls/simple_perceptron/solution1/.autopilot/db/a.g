#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/wask/workspace/mgr/hls_perceptron/hls/simple_perceptron/solution1/.autopilot/db/a.g.bc ${1+"$@"}