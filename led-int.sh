#!/bin/bash
echo 4 > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio4/direction
