## MPD daemon start (if no other user instance exists)
##[ ! -s ~/.config/mpd/pid ] && mpd

if [[ "$(tty)" = "/dev/tty1" ]]; then
  startx "$XDG_CONFIG_HOME/X11/xinitrc" > /dev/null 2>&1
fi

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

export VIMINIT="set nocp | source ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc"
