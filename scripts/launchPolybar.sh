#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
if [[ $(hostname) == 'saturnus' ]]; then
    polybar top  &
elif [[ $(hostname) == 'jupiter' ]]; then
    #TODO Add the polybar code for jupiter
    polybar jupiter &
    polybar jupiter2 &
fi

echo "Bars launched..."
