#!/usr/bin/env zsh

alias ups-online="cat /sys/class/power_supply/gpio-charger/online"
alias ups-status="cat /sys/class/power_supply/gpio-charger/status"
alias ups-level='scale=0;echo "`cat /sys/bus/iio/devices/iio:device0/in_voltage2_raw` * `cat /sys/bus/iio/devices/iio:device0/in_voltage_scale`/1" | bc'
