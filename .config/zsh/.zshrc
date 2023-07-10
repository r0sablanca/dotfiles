#############################################################################################
#                                                                                           #
#                                           Theme                                           #
#                                                                                           #
#############################################################################################
# Dracula colors for zsh-syntax-highlighing
source ${ZDOTDIR}/colors/dracula-zsh-syntax-highlighting.sh

# Dracula TTY Colors
source ${ZDOTDIR}/colors/dracula-tty.sh

# Starship Prompt OS Icons
source ${ZDOTDIR}/themes/starship.zsh

#############################################################################################
#                                                                                           #
#                                            Main                                           #
#                                                                                           #
#############################################################################################
# General Settings
setopt AUTO_CD

# History Settings
HISTFILE=$HOME/.cache/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME

# Tab Completion Settings
autoload -U colors && colors
autoload -U compinit && compinit -u
setopt auto_menu
setopt complete_in_word
setopt always_to_end
zstyle ':completion:*' menu select
## Auto complete with case insensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
## For all completions: Selected item color
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 'ma=0\;30;44'
## For all completions: Commands color
zstyle ':completion:*:commands' list-colors '=*=1;33'
## For all completions: Options color
zstyle ':completion:*:options' list-colors '=^(-- *)=36'
zmodload zsh/complist
compinit
_comp_options+=(globdots) #Hidden files
## Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.cache/zsh/tab-cache

# Source Functions
source ${ZDOTDIR}/functions.zsh

#############################################################################################
#                                                                                           #
#                                         Keybinds                                          #
#                                                                                           #
#############################################################################################
# VI mode
#bindkey -v
#export KEYTIMEOUT=1

# Use vim keys in tab completion menu
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'right' vi-forward-char

# Fix backspace bug when switching modes
#bindkey "^?" backward-delete-char

# Change directory with LF
bindkey -s "^o" "lfcd\n"

# Home, End, Delete keybinds
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '\e[3~' delete-char

#############################################################################################
#                                                                                           #
#                                          Aliases                                          #
#                                                                                           #
#############################################################################################
# General
alias ..='cd ..; ls'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias src='source ${ZDOTDIR}/.zshrc'
alias zshrc='${=EDITOR} ${ZDOTDIR}/.zshrc'
alias zshp10k='${=EDITOR} ~/.p10k.zsh'
alias m='micro'
alias grep='grep --color=auto'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}'
alias ip='ip -c'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias btw='neofetch'
alias code-extensions='code --list-extensions | xargs -L 1 echo code --install-extension'
alias d2ua='find . -type f -print0 | xargs -0 dos2unix'

# System
alias df='df -Tha --total'
alias du='du -ach | sort -h'
alias free='free -mtl'
alias p='procs'
alias pw='p -w'
alias kill='killall -q'
alias mypip='curl http://ifconfig.me/; echo'
alias mypipinfo='curl https://ipinfo.io/json/; echo'
alias ping='ping -c 5'
alias cpuinfo='lscpu'
alias agpu='glxinfo | grep "OpenGL renderer"'
alias ccram="ClearRamCache"

# History, Search history, Case sensative history
alias h="fc -fl"
alias hs="fc -fl 0 | grep"
alias hsi="fc -fl 0 | grep -i"

# EXA
alias ls='exa --icons --color always --group-directories-first'
alias la='exa --icons --color always --group-directories-first -a'
alias ll='exa --icons --color always --group-directories-first --git -hbl'
alias lla='exa --icons --color always --group-directories-first --git -hbla'
alias llg='exa --icons --color always --group-directories-first --git -hblag'
alias lls='exa --icons --color always --group-directories-first --git -hblas size'
alias lld='exa --icons --color always --group-directories-first --git -hblaUum'
alias lt='exa --icons --color always --group-directories-first -T'
alias lta='exa --icons --color always --group-directories-first -Ta'

# LS Deluxe
#alias ls='lsd --group-dirs=first'
#alias la='ls -A --group-dirs=first'
#alias ll='ls -l --group-dirs=first --size=short'
#alias lla='ls -lA --group-dirs=first --size=short'
#alias lls='lla -S'
#alias llm='lla --date=relative'
#alias lt='ls --tree --group-dirs=first'
#alias lta='lt -A'

# TMUX
alias t='tmux'
alias tn='tmux new'
alias tns='tmux new -s'
alias tks='tmux kill-session -t'
alias tka='tmux kill-session -a'
alias tls='tmux list-sessions'
alias ta='tmux attach'
alias tas='tmux attach -t'
alias tlsk='tmux list-keys'
alias ti='tmux info'

# GIT
alias glr='~/.local/bin/convert-gitlab-ssh.sh'
alias ghr='~/.local/bin/convert-github-ssh.sh'
# SSH
alias sshrsa='ssh-keygen -t rsa -b 4096'
alias sshag='eval "$(ssh-agent -s)"'

alias sshgh='ssh-add ~/.ssh/id_GitHub'
alias sshgl='ssh-add ~/.ssh/id_GitLab'
alias sshrpi='ssh-add ~/.ssh/id_RPi'

# Pacman
alias pacupd="sudo pacman -Sy"
alias pacupg='sudo pacman -Syu'
alias pacmir='sudo pacman -Syy'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias pacinsd='sudo pacman -S --asdeps'
alias paclsorphans='sudo pacman -Qdt'
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pacfileupg='sudo pacman -Fy'
alias pacfiles='pacman -F'
alias pacls='pacman -Ql'
alias pacown='pacman -Qo'
alias pacmanallkeys='sudo pacman-key --refresh-keys'
alias paccac='sudo pacman -Sc'
alias pacmirror='reflector_mirror'

# Paru
alias parupg='paru -Sua --upgrademenu'
alias parus='paru -Si'
alias parucac='paru -Sc'

#############################################################################################
#                                                                                           #
#                                          Plugins                                          #
#                                                                                           #
#############################################################################################
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${ZDOTDIR}/plugins/zsh-command-not-found/command-not-found.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-you-should-use/you-should-use.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZDOTDIR}/plugins/zsh-dirhistory/dirhistory.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-copyfile/copyfile.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-copydir/copydir.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-extract/extract.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-sudo/sudo.plugin.zsh
source ${ZDOTDIR}/plugins/zsh-git/git.plugin.zsh

eval "$(starship init zsh)"
