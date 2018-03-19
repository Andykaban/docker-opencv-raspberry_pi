#!/bin/sh

cd /build/t

make install && fakeroot tar -czvf /build/opencv-3.4.1.tar.gz /opt/opencv-3.4.1
