# Drawing Tools

Provides a Docker container with Gimp and Inkscape you can attach an X instance to, as well as mounts in custom fonts for usage. Includes scripts for starting gimp and inkscape with xquartz.

# Folder Structure

In order to use the provided scripts, you must follow the following convention so that fonts will be mounted and the script can invoke the program with the image to edit automatically.

- [images-directory]/
  - [image1]/
    - fonts/
    - [image1].xcf
    - [image1].svg
  - [image2]/
    - fonts/
    - [image2].xcf
    - [image2].svg

Note that the directory name and the xcf/svg file must be the same.

## Gimp

From within the directory containing the image directories, execute `gimp.sh [image-name]`

## Inkscape

From within the directory containing the image directories, execute `inkscape.svg [image-name]`