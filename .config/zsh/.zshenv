# Other XDG paths
#export VDPAU_DRIVER="va_gl"
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_X11_EGL=1
export MOZ_WEBRENDER=1
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

# Fixing Paths
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export _JAVA_AWT_WM_NONREPARENTING=1
export CALCHISTFILE=$XDG_CACHE_HOME/calc/calc_history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export UNISON="$XDG_DATA_HOME"/unison
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
#export XAUTHORITY="$XDG_RUNTIME_DIR"/X11/xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# Default Apps
export BROWSER="qutebrowser"
export BROWSERCLI="w3m"
export COLORTERM="truecolor"
export EDITOR="vim"
#export EDITOR="vim --servername LP --remote-tab-silent"
export IMAGE="sxiv"
#export LYEDITOR="nvr --remote-silent '+call cursor(%(line)s, %(column)s)' %(file)s && wmctrl -a NVIM"
export LYEDITOR="vim --servername LP --remote-tab-silent '+call cursor(%(line)s, %(column)s)' %(file)s && wmctrl -a LP && exit"
export OPENER="xdg-open"
export PAGER="less"
export READER="zathura"
export TERMINAL="alacritty"
export VIDEO="mpv"
export VISUAL=$EDITOR
export WM="i3"

# Path
export PATH="${PATH}:/home/remy/.local/bin"
