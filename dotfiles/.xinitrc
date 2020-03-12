xrdb ~/.Xresources &
2screens.sh
systemctl --user import-environment DISPLAY
xinput set-prop "Kingsis Peripherals ZOWIE Gaming mouse" "libinput Accel Profile Enabled" 0, 1 &
sxhkd &
keyboard.sh &
picom &
dunst & 
unclutter &
exec bspwm
