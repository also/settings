export CLICOLOR=1

export PATH=$HOME/.rbenv/bin:$HOME/.jenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:$HOME/Library/Haskell/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

source $HOME/work/settings/helpers.sh

function prompt_git() {
  # check if we're in a git repo. (fast)
  git rev-parse --is-inside-work-tree &>/dev/null || return

  branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
    git describe --all --exact-match HEAD 2> /dev/null || \
    git rev-parse --short HEAD 2> /dev/null || \
    echo '(unknown)')";

  echo " on $branchName"
}

function set_prompts() {
  local bold=$(tput bold)
  local green=$(tput setaf 190)
  local purple=$(tput setaf 141)
  local reset=$(tput sgr0)
  local black=$(tput setaf 0)

  PS1="\[\033]0;\w\007\]"                                 # terminal title (set to the current working directory)
  PS1+="\n\[$bold\]"
  PS1+="\[$green\]\w"                                     # working directory
  PS1+="\[$purple\]\$(prompt_git)"
  PS1+="\n"
  PS1+="\[$reset\]\\$ "
}


set_prompts
unset set_prompts
