#!/bin/bash

current_governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

case "$current_governor" in
performance)
  echo '{"text": "", "class": "performance", "tooltip": "<b>Governor</b> Performance"}'
  ;;
powersave)
  echo '{"text": "", "class": "powersave", "tooltip": "<b>Governor</b> Powersave"}'
  ;;
*)
  echo '{"text": "?", "class": "unknown", "tooltip": "<b>Governor</b> Unknown"}'
  ;;
esac
