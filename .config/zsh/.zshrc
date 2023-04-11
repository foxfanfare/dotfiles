#  _________  _   _ ____   ____
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |
#  / /_ ___) |  _  |  _ <| |___
# /____|____/|_| |_|_| \_\\____|
#

# ------------------------------------------------------------------------------
# PROMPT
# ------------------------------------------------------------------------------

autoload -U colors && colors
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of
# ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# ------------------------------------------------------------------------------
# ALIAS
# ------------------------------------------------------------------------------

source "$XDG_CONFIG_HOME"/zsh/aliasrc

# ------------------------------------------------------------------------------
# HISTORY
# ------------------------------------------------------------------------------

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# ------------------------------------------------------------------------------
# OPTIONS
# ------------------------------------------------------------------------------

# Automatically cd into typed directory.
setopt autocd

# Disable ctrl-s to freeze terminal.
stty stop undef
# Allowing comments
setopt interactive_comments

# ------------------------------------------------------------------------------
# COMPLETION
# ------------------------------------------------------------------------------

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
zmodload -a zsh/mapfile mapfile
compinit
# Include hidden files.
_comp_options+=(globdots)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

# ------------------------------------------------------------------------------
# CURSOR
# ------------------------------------------------------------------------------

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
  # initiate `vi insert` as keymap
  # (can be removed if `bindkey -V` has been set elsewhere)
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}

# ------------------------------------------------------------------------------
# KEY BINDINGS
# ------------------------------------------------------------------------------

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Fix for delete key
bindkey -v '^?' backward-delete-char
bindkey "^[[3~"  delete-char
bindkey "^[3;5~" delete-char
bindkey -a '^[[3~' vi-delete-char

# ------------------------------------------------------------------------------
# VI MODE
# ------------------------------------------------------------------------------

bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Vim change ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

# ------------------------------------------------------------------------------
# PLUGINS
# ------------------------------------------------------------------------------

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Auto Suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Ctrl+Space
bindkey '^ ' autosuggest-accept
