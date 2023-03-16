# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Load our shared SHELLRC file
source ~/.shrc

# Load fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Load base16
[ -f ~/.config/base16-shell/profile_helper.sh ] && source ~/.config/base16-shell/profile_helper.sh
