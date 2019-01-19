# BSD ECHO
set -o BSD_ECHO

# 補完機能
autoload -U compinit
compinit

# antigen
export DOTFILES=$HOME/dotfiles
source $DOTFILES/antigen.zsh

antigen use oh-my-zsh

## Terminalでの入力に色がつく http://blog.glidenote.com/blog/2012/12/15/zsh-syntax-highlighting/
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


# ディレクトリ名を入力するだけで移動
setopt auto_cd

# 移動したディレクトリを記録しておく。"cd -[Tab]"で移動履歴を一覧
setopt auto_pushd

# コマンド訂正
setopt correct

# 補完候補を詰めて表示する
setopt list_packed 

# 補完候補表示時などにピッピとビープ音をならないように設定
setopt nolistbeep

# Emacsライクキーバインド設定
bindkey -e 

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# コマンド履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 色設定
autoload colors
colors
PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

# alias
alias p='`pet search`'
alias psp='pet search | pbcopy'
alias ls="ls -G"
alias la="ls -laGF"

# go
export GOPATH=$HOME/go

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# gae for go
export PATH=$PATH:/Users/howdy39/go_appengine/ 

# gcloud
# https://cloud.google.com/sdk/docs/?hl=ja
[ -s $HOME/env/google-cloud-sdk/path.zsh.inc ] && source $HOME/env/google-cloud-sdk/path.zsh.inc
[ -s $HOME/env/google-cloud-sdk/completion.zsh.inc ] && source $HOME/env/google-cloud-sdk/completion.zsh.inc

# node
eval "$(nodenv init -)"

# Java
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.7"`
PATH=${JAVA_HOME}/bin:${PATH}

# App Engine SDK for Java
# https://cloud.google.com/appengine/docs/standard/java/download#java_mac
export APPENGINE_SDK=${HOME}/env/appengine-java-sdk-1.9.53
export PATH=${PATH}:${APPENGINE_SDK}/bin/

# ruby
eval "$(rbenv init -)"

# direnv
export EDITOR=vi
eval "$(direnv hook zsh)"
