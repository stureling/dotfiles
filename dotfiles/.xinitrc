if [[ $(hostname) == 'saturnus' ]]; then
    wpg -s ktriangles1.jpg &
    touchpad.sh &
    fusuma &
    sxhkd -c $HOME/.config/sxhkd_saturnus &
elif [[ $(hostname) == 'jupiter' ]]; then
    2screens.sh
    xinput set-prop "Kingsis Peripherals ZOWIE Gaming mouse" "libinput Accel Profile Enabled" 0, 1 &
    sxhkd -c $HOME/.config/sxhkd_jupiter &
fi

systemctl --user import-environment DISPLAY
launchPolybar.sh &
xrdb ~/.Xresources &
keyboard.sh &
picom &
dunst & 
unclutter &
xsetroot -cursor_name trek &
exec bspwm
