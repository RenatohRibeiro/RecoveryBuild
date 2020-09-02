#!/bin/bash

telegram -M "OrangeFox (R11.0) - S9+ (star2qltechn)
***🔨Building Recovery started***"
SYNC_START=$(date +"%s")

export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
./OrangeFoxBuild.sh

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START))
telegram -M "OrangeFox (R11.0) - S9+ (star2qltechn)
***📦Building completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds***"

# Output
telegram -f out/target/product/star2qltechn/OrangeFox-R11.0-Stable-star2qltechn.zip "📦 [Recovery] [Official] - S9+ (star2qltechn)"
