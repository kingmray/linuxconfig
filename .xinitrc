#!/bin/sh
#exec gnome-session-cinnamon
#exec openbox-session
#exec startlxde
#DEFAULTSESSION=lxsession
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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

#case "$1" in
#    openbox) exec openbox-session ;;
#     xfce) exec xfce4-session ;;
#     gnome3) exec gnome-session ;;
#     kde) exec startkde ;;
#     cinnamon) exec gnome-session-cinnamon ;;
#     razor-qt) exec razor-session ;;
#     lxde) exec lxsession ;;
#     mate) exec mate-session ;;
#     *) exec $DEFAULTSESSION ;;
#esac

# start some nice programs

#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
# for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#  [ -x "$f" ] && . "$f"
# done
# unset f
#fi

#twm &

#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

#DEFAULTSESSION=gnome-session
exec openbox-session
