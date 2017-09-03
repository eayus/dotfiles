#!/bin/bash

if [[ $(mpc | awk "NR==2" | grep playing) ]]; then
	mpc pause
else
	mpc play
fi

