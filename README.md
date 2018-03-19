docker-opencv-raspberry_pi
===========

This repo provides Raspberry Pi crosstools build environment and compile OpenCV framework (current version 3.4.1).

## How to use

1 - Create raspberry pi crosstools docker image

``` sh
docker build -t raspberry_crosstools:latest .
```

2 - Build OpenCV (version 3.4.1)

``` sh
docker run --rm -v {yuor_current_dir}/build:/build raspberry_crosstools:latest /bin/bash /build/create_opencv.sh prepare build tar
```
where:

    - prepare, Download sources tree and setup working directory

    - build, Compile OpenCV library

    - tar, Create installation tarball archive 

The build result placed in the build/ directory with opencv-3.4.1.tar.gz name
