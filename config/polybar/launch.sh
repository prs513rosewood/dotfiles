#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
killall -q compton

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
compton &
polybar primary &
polybar secondary &

echo "Bars launched..."
