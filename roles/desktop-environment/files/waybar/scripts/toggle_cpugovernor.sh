#!/bin/bash

current_governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

case "$current_governor" in
performance)
  sudo /usr/bin/cpupower frequency-set -g powersave
  ;;
powersave)
  sudo /usr/bin/cpupower frequency-set -g performance
  ;;
*)
  sudo /usr/bin/cpupower frequency-set -g powersave
  ;;
esac
