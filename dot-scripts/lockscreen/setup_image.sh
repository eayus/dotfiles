#!/bin/bash

dir=$(dirname "$0")
convert -gravity center -composite "$1" $dir/lock.png template.png 
mogrify -stroke white -fill none -draw "rectangle 810,880 1110,890" template.png
