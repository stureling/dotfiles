#!/bin/sh
if [[ $(hostname) == 'saturnus' ]]; then
     wpg -s ktriangles1.jpg &
     touchpad.sh &
     keyboard.sh &
     fusuma &
     sxhkd -c $HOME/.config/sxhkd/sxhkd_saturnus &
elif [[ $(hostname) == 'jupiter' ]]; then
    2screens.sh
    xinput set-prop "Kingsis Peripherals ZOWIE Gaming mouse" "libinput Accel Profile Enabled" 0, 1 &
    sxhkd -c $HOME/.config/sxhkd/sxhkd_jupiter &
fi
