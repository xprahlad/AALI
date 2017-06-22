#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#auto start X after login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

#rbenv settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
