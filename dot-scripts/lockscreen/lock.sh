#!/bin/bash

dir=$(dirname "$0")

(
    flock -n 9 || exit 1

    song_perc="$(mpc | head -2 | grep -Po '([0-9]{1,}%)' | sed 's/%$//')"
    right_coord=$(( (song_perc * 3) + 810))

    convert "$dir/template.png" -fill white -draw "rectangle 810,880 $right_coord,890" "$dir/tmp.png"
    mogrify -fill white -gravity Center -pointsize 14 -family 'Fira Mono' -annotate +0+315 "$(mpc | head -1)" "$dir/tmp.png" 

    i3lock -i "$dir/tmp.png" --textcolor=ffffff00 --ringcolor=ffffffff --ringvercolor=ffffffff --ringwrongcolor=C0C3CAFF --insidevercolor=ffffff00 --insidewrongcolor=ffffff00 --insidecolor=ffffff00 -s --keyhlcolor=C0C3CAFF --linecolor=ffffffff --bshlcolor=19191919

) 9>~/.scripts/locks/screenlock
