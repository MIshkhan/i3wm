#!/bin/bash

[[ $(pacmd list-cards | grep "active profile" | cut -d " " -f 3-) = "<output:hdmi-stereo-extra1+input:analog-stereo>" ]] && pacmd set-card-profile 0 "output:analog-stereo+input:analog-stereo" || pacmd set-card-profile 0 "output:hdmi-stereo-extra1+input:analog-stereo"
