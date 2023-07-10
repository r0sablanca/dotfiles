source $HOME/.env.sh
# Default Apps
export term="xterm-256color"
export EDITOR="code"
export OPENER="xdg-open"
export BROWSER="firefox"
export TERMINAL="kitty"

export EXA_COLORS="da=4;31"

## Directories
# ZSH Directory Location
export ZDOTDIR=$DOTFILES/.config/zsh
# Set up a few standard directories based on:
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# Add all local binaries to the system path.
export PATH="${PATH}:${HOME}/.local/bin"

# Disable files
export LESSHISTFILE=-

## Coloring for Man Pages
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)

# LF Icons
[ -f "${HOME}/.config/lf/LF_ICONS" ] && source "${HOME}/.config/lf/LF_ICONS"

d=$CONFIG/.dircolors
# Enable custom LS_COLORS
#eval '$(dircolors ${d})'
test -r $d && eval"$(dircolors $d)"
