- List connected devices \
`$ xinput list`

- List props for a specific device (x below) \
`$ xinput list-props x`

- Change prop value \
`$ xinput set-prop x 'full-prop-name' value`


- Prevent wakeup. On my Dell XPS-13 whenever I entered suspend mode a USB
device would automatically wake my computer back up. This creates a service
that disables the wakeup abilities of the USB device \
`$ less /proc/acpi/wakeup` \
` /enabled # Search for enabled devices` \
`sudo vim /etc/systemd/system/suspendfix.service` \
```
[Unit]
Description=fix to prevent system from waking immediately after suspend
[Service]
ExecStart=/bin/sh -c '/bin/echo XHC > /proc/acpi/wakeup' #substitute XHC with the device you don't want to wake
Type=oneshot
RemainAfterExit=yes
[Install]
WantedBy=multi-user.target
```
`$ sudo systemctl enable suspendfix.service` \
`$ sudo reboot # Settings should take effect. On boot view wakeup list to verify`
