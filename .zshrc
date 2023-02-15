eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.nodenv/shims:$PATH"

export EDITOR=vi
eval "$(direnv hook zsh)"
function gam() { "/Users/howdy39/bin/gam/gam" "$@" ; }
