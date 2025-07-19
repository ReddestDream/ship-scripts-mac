#!/bin/bash
git clone --recursive -b spag https://github.com/ReddestDream/SpaghettiKart
# Ensure ROM (named baserom.us.z64) is in place in the SpaghettiKart folder or build will fail.
cd SpaghettiKart
rm -rf libultraship
# Currently works with latest libultraship (add -b spag if/when this fails).
git clone --recursive https://github.com/ReddestDream/libultraship
cmake -H. -Bbuild-cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release
cmake --build build-cmake --target ExtractAssets
cmake --build build-cmake --config Release
# App Packaging is not working yet.
# cd build-cmake
# cpack
# cd ..
