#!/bin/sh
# Dynamically rebind all Logitech dongles by USB ID

for dev in /sys/bus/usb/devices/*; do
    if [ -f "$dev/idVendor" ] && [ -f "$dev/idProduct" ]; then
        vendor=$(cat "$dev/idVendor")
        product=$(cat "$dev/idProduct")
        # Add all your Logitech dongle IDs here
        case "$vendor:$product" in
            046d:0aba|046d:c539|046d:c545|046d:c343)
                name=$(basename "$dev")
                echo "$name" | sudo tee /sys/bus/usb/drivers/usb/unbind
                echo "$name" | sudo tee /sys/bus/usb/drivers/usb/bind
                ;;
        esac
    fi
done