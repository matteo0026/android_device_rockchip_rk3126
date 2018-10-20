#!/bin/sh

set -e

export VENDOR=rockchip
export DEVICE=rk3126
./../../$VENDOR/rk3126/extract-files.sh $@

