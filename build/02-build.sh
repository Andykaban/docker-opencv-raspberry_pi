#!/bin/sh

cd /build/

[ -d "t" ] || mkdir "t"
cd t

cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/opt/opencv-3.4.1 \
      -D CMAKE_TOOLCHAIN_FILE=/build/arm-raspberry-crosstool.cmake \
      -D OPENCV_EXTRA_MODULES_PATH=/build/opencv_contrib-3.4.1/modules \
      -D BUILD_DOCS=OFF BUILD_EXAMPLES=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D BUILD_opencv_java=OFF \
      -D BUILD_opencv_python=OFF \
      -D BUILD_opencv_python2=OFF \
      -D BUILD_opencv_python3=OFF /build/opencv-3.4.1 

make
