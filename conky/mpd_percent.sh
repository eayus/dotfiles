echo "$(mpc | head -2 | grep -Po '([0-9]{1,}%)' | sed 's/%$//')"
