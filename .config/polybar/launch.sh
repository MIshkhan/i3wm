#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch example bar
# polybar -r top &
polybar -r bottom & 
compton &

setxkbmap -option 'grp:ralt_rshift_toggle'

echo "Bars launched..."
