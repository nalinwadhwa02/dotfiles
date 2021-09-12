
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

SESSION=${1:-dwm}

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

get_session(){
	local dbus_args=(--sh-syntax --exit-with-session)
	case "$SESSION" in
		awesome) dbus_args+=(awesome) ;;
		bspwm) dbus_args+=(bspwm-session) ;;
		budgie) dbus_args+=(budgie-desktop) ;;
		cinnamon) dbus_args+=(cinnamon-session) ;;
		deepin) dbus_args+=(startdde) ;;
		enlightenment) dbus_args+=(enlightenment_start) ;;
		fluxbox) dbus_args+=(startfluxbox) ;;
		gnome) dbus_args+=(gnome-session) ;;
		i3|i3wm) dbus_args+=(i3 --shmlog-size 0) ;;
		dwm) dbus_args+=(dwm) ;;
		kde) dbus_args+=(startkde) ;;
		lxde) dbus_args+=(startlxde) ;;
		lxqt) dbus_args+=(lxqt-session) ;;
		mate) dbus_args+=(mate-session) ;;
		xfce) dbus_args+=(xfce4-session) ;;
		openbox) dbus_args+=(openbox-session) ;;
		*) dbus_args+=("$SESSION") ;;
	esac

	echo "dbus-launch ${dbus_args[*]}"
}
#exec $(get_session)


SLEEP_SEC=1m  # set bar_delay = 5 in /etc/spectrwm.conf
#loops forever outputting a line every SLEEP_SEC secs
while :; do
    MUTE=$( pulseaudio-ctl |grep "Is sink muted" | grep -Eo "no|yes")
    if [ "$MUTE" = "yes" ];then MUTE="婢";else MUTE="";fi
    BAT=$(cat "/sys/class/power_supply/BAT0/capacity")
    STAT=$(cat "/sys/class/power_supply/BAT0/status")
    if [ "$STAT" = "Charging" ];then STAT="";else STAT="";fi
    xsetroot -name  "|  :$(date +%a:%d:%b) | $MUTE :$(pulseaudio-ctl full-status| grep -Eo '[0-9]{1,4}')% | ﯱ :$(nmcli -t device status| grep wlo1:wifi: | grep -oh '\w*connected') | $STAT :$BAT% |  :$(date +%H:%M) |  "
    sleep $SLEEP_SEC
done &

batteryReminder.sh &
xsetroot -solid "#4E4E4E" &
setxkbmap -option caps:escape &
exec dwm



