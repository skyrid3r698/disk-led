#!/bin/bash
while true; do
   sleep 0.6 &
   while IFS=" " read -r col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11 col12 col13 col14 col15; do
     TEST="$col10"
   done < "/sys/block/sda/stat"
  #debug echo $TEST
  if [ $TEST -gt $TEST2 ]
  then
    #debug echo greater
    echo 0 > /sys/class/gpio/gpio4/value
    sleep 0.2
    echo 1 > /sys/class/gpio/gpio4/value
    sleep 0.2
  elif [ $TEST -eq $TEST2 ]
  then
    #debug echo same
    echo 0 > /sys/class/gpio/gpio4/value
  fi

  while IFS=" " read -r col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11 col12 col13 col14 col15; do
     TEST2="$col10"
  done < "/sys/block/sda/stat"
wait
done

