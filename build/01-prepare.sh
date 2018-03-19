#!/bin/sh

cd /build

[ -f "opencv.zip" ] && rm -f opencv.zip
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.1.zip
[ -d "opencv-3.4.1" ] && rm -rf opencv-3.4.1
unzip opencv.zip
rm -f opencv.zip

[ -f "opencv_contrib.zip" ] && rm -f opencv_contrib.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.1.zip
[ -d "opencv_contrib-3.4.1" ] && rm -rf opencv_contrib-3.4.1
unzip opencv_contrib.zip
rm -f opencv_contrib.zip

[ -d "t" ] && rm -rf t
mkdir "t"

[ -f "opencv-3.4.1.tar.gz" ] && rm -f "opencv-3.4.1.tar.gz"
