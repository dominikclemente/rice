#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar-bspwm &
  done
else
  polybar --reload mainbar-bspwm &
fi

echo "Bar launched..."
