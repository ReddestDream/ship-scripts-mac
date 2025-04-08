#!/bin/bash
git clone --recursive -b 2ship https://github.com/ReddestDream/2ship2harkinian
cd 2ship2harkinian
rm -rf libultraship
git clone --recursive -b 2ship https://github.com/ReddestDream/libultraship
cmake -H. -Bbuild-cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release
cmake --build build-cmake --target Generate2ShipOtr
cmake --build build-cmake --config Release
cd build-cmake
cpack
cd ..
cmake --build build-cmake --target clean
