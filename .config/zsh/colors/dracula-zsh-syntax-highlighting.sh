# Dracula Theme (for zsh-syntax-highlighting)
#
# https://github.com/zenorocha/dracula-theme
#
# Copyright 2021, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author George Pickering <@bigpick>
# @author Zeno Rocha <hi@zenorocha.com>
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES
# Default groupings per, https://spec.draculatheme.com, try to logically separate
# possible ZSH_HIGHLIGHT_STYLES settings accordingly...?
#
# Italics not yet supported by zsh; potentially soon:
#    https://github.com/zsh-users/zsh-syntax-highlighting/issues/432
#    https://www.zsh.org/mla/workers/2021/msg00678.html
# ... in hopes that they will, labelling accordingly with ,italic where appropriate
#
# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#504C67'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#8AFF80'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#8AFF80'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#8AFF80'
ZSH_HIGHLIGHT_STYLES[function]='fg=#8AFF80'
ZSH_HIGHLIGHT_STYLES[command]='fg=#8AFF80'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#8AFF80,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#FFFF80,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#FFFF80'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#FFFF80'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#9580FF'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#99FFEE'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#99FFEE'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#99FFEE'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#FF80BF'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#FF80BF'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#FF80BF'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#FF80BF'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#F1FA8C'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#FFFFFF'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[path]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#9580FF'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[default]='fg=#FFFFFF'
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
