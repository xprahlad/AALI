#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#Ruby Settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
