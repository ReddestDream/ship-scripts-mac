#!/bin/bash
git clone --recursive -b ship-blair https://github.com/ReddestDream/Shipwright
cd Shipwright
rm -rf libultraship
git clone --recursive -b ship https://github.com/ReddestDream/libultraship
cmake -H. -Bbuild-cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release
cmake --build build-cmake --target GenerateSohOtr
cmake --build build-cmake --config Release
cd build-cmake
cpack
cmake --build build-cmake --target clean
