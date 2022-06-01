#!/bin/zsh


state=$(cat state)
zer=0
if [ $state -eq $zer ]; then
	# Switch to HDMI
	echo '1' > state
	ddcctl -d 1 -i 15
else
	# Switch to DP
	echo '0' > state
	ddcctl -d 1 -i 5
fi