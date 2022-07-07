#!/usr/bin/sh

## Terminate already running bar instances ##
killall -9 polybar

## Launch bar1 and bar2 ##
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar nasa 2>&1 | tee -a /tmp/polybar1.log & disown

my_laptop_external_monitor=$(xrandr --query | grep 'DP2-3')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar external 2>&1 | tee -a /tmp/polybar2.log & disown
fi
## If all your bars have ipc enabled, you can also use ##
# polybar-msg cmd quit
