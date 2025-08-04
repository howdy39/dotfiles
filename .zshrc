export DENO_INSTALL="/Users/howdy39/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"

export EDITOR=vi
eval "$(direnv hook zsh)"

# poetry
export PATH="/Users/howdy39/.local/bin:$PATH"

# curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# ~/.zshrc
eval "$(starship init zsh)"
