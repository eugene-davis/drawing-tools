#!/bin/bash

# Call from the images folder with the name of the image, and it'll open the image directly,
# otherwise it might get angry at you.

name=$1

open -a XQuartz
IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

docker run --rm -e DISPLAY=$IP:0 -v $(pwd)/$name/fonts/:/root/.local/share/fonts/TTF/type1 -v $(pwd)/$name:/image -v /tmp/.X11-unix:/tmp/.X11-unix drawing-tools /usr/bin/gimp /image/sketch.xcf