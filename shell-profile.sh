export CLICOLOR=1

export PATH=$HOME/.rbenv/bin:$HOME/.jenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:$HOME/Library/Haskell/bin

eval "$(rbenv init -)"
eval "$(jenv init -)"
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

source $HOME/work/settings/helpers.sh
