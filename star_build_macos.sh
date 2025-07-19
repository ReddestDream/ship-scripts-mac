#!/bin/bash
git clone --recursive -b star https://github.com/ReddestDream/Starship
cd Starship
rm -rf libultraship
git clone --recursive -b star https://github.com/ReddestDream/libultraship
cmake -H. -Bbuild-cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release
cmake --build build-cmake --target ExtractAssets
# Ensure ROM (named baserom.z64) is in place in the Starship folder for testing build.
cmake --build build-cmake --target GeneratePortO2R
cmake --build build-cmake --config Release
# App Packaging is not working yet.
# cd build-cmake
# cpack
# cd ..
