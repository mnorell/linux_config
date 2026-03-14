# Enable hibernate

## Add new swap
`btrfs filesystem mkswapfile --size 16G /swapfile`
`sudo swapon /swapfile`

## Remove old swap
Check 
`swapon -s`

Remove the other one
`sudo swapoff /dev/zram0`

## Verify
`swapon -s`

## Persist the change
Add to `/etc/fstab`:
`/swapfile  none  swap  defaults  0  0`

`sudo bash -c 'echo add_dracutmodules+=\" resume \" > /etc/dracut.conf.d/resume.conf'`


## Try hibernate
`systemctl hibernate`
