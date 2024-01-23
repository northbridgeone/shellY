#!/bin/bash

while true
do
    echo '1' | sudo tee /sys/class/leds/tpacpi::lid_logo_dot/brightness > /dev/null
    sleep 0.01
    echo '0' | sudo tee /sys/class/leds/tpacpi::lid_logo_dot/brightness > /dev/null
    sleep 0.01
done

