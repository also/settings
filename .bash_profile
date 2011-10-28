export CLICOLOR=1

export HISTCONTROL=ignoredups

export GREP_OPTIONS="--color=auto -n"

alias ip="curl -s jsonip.com | cut -d '\"' -f 4"

alias json="python -m json.tool"

alias serve="python -m SimpleHTTPServer"

# QuickLook
alias ql="qlmanage -p &>/dev/null"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

alias ..="cd .."

if [ -f /usr/local/bin/src-hilite-lesspipe.sh ]; then
  export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
  export LESS=' -R '
  alias hl="source-highlight --failsafe --infer-lang -f esc --style-file=esc.style -i"
fi

# include local overrides
if [ -f ~/.bash_profile_local ]; then
   source ~/.bash_profile_local
fi
