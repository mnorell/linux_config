# Enable deep sleep


## See current setting
'cat /sys/power/mem_sleep'


## Check that it works (temporarily enable)
'echo deep | sudo tee /sys/power/mem_sleep'

Close lid, wait for sleep, open lid.

Look for s3 in output of:
'sudo journalctl | grep PM'


## Enable by default
'sudo gedit /etc/default/grub'

 Add mem_sleep_default=deep at the end of GRUB_CMDLINE_LINUX_DEFAULT. i.e.

'GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mem_sleep_default=deep"'

Then run:

'sudo update-grub'