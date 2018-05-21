show_virtual_env() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
export -f show_virtual_env
PS1='$(show_virtual_env)'$PS1


[ -n "$PS1" ] && source ~/.bash_profile;

eval "$(direnv hook bash)"
