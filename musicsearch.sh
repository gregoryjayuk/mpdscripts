#!/bin/bash

mus=$(echo "" | dmenu -p "Music Search: ")
if [[ $mus != "" ]]
then
	TRACK=$(mpc search any "$mus" | dmenu -l 20)
	if [[ $TRACK != "" ]]
	then
	echo $TRACK | mpc insert; mpc play; mpc next
	pkill -RTMIN+11 dwmblocks
	fi
fi
