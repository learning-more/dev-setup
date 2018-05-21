# https://github.com/direnv/direnv/wiki/Python
show_virtual_env() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
export -f show_virtual_env
PS1='$(show_virtual_env)'$PS1

# from dev-setup
[ -n "$PS1" ] && source ~/.bash_profile;

# From Direnv
eval "$(direnv hook bash)"
