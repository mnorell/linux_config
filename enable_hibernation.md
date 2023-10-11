# Enable hibernation

https://linuxhint.com/enable-hibernate-ubuntu-22-04-lts/
https://www.stefanproell.at/posts/2022-11-01-fde-hibernate/


sudo swapoff /swap.img
sudo rm /swap.img
sudo fallocate -l 16G /swap.img
sudo chown 0 /swap.img
sudo chmod 600 /swap.img
sudo mkswap /swap.img
sudo swapon /swap.img

Verify:
free -h


Find  Physical Offset Number of the Swapfile
sudo filefrag -v /swap.img | awk  '/^\s*0/ { print $4 }' | sed 's/\.//g'

Find disk UUID
findmnt / -o UUID


Add the values to `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub`
`resume=UUID=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX resume_offset=XXXXX`

also add `mem_sleep_default=deep` to enable deep sleep.


GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mem_sleep_default=deep resume=UUID=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX resume_offset=XXXXX"
ex. 
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mem_sleep_default=deep resume=UUID=0fa80cdf-0e1b-44d7-a86a-2609416a7312 resume_offset=43505664"
43505664
0fa80cdf-0e1b-44d7-a86a-2609416a7312



Then:
sudo update-grub
