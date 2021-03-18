xrdb -merge ~/.XResources
xrandr --auto
tint2 &
volumeicon &
nm-applet &
ibus-daemon -drx &
synapse -s &
flameshot &
sleep 1 && feh --bg-scale ~/Pictures/Wallpapers/bg.jpg &
exec openbox-session