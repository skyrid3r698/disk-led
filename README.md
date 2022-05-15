# disk-led
a disk-io led for Raspberrypi
## how it works:
to enable the LED you have to edit the led-int.sh script to your GPIO pins and run it once after boot via crontab. 
After that you can run the led.sh to show the disc activity on your led.
## setup guide:
1. clone the repo
2. save it somewhere safe and make both .sh files executable with "sudo chmod +x led.sh && chmod +x led-int.sh"
3. create a crontab like this: "@reboot /home/ubuntu/disk-led/led-int.sh" and also this "@reboot /home/ubuntu/disk-led/led.sh"
4. run led.sh
5. watch the led blink while disk-io
