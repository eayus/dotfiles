#!/bin/bash

notify-send "Volume: $(amixer set Master 5%+ | grep -Po '([0-9]{1,}\%)' | head -1)"
