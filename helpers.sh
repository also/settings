function ip() {
  echo public: `curl -s https://jsonip.org | jq -r .ip`
  for i in en0 en1
  do
    echo "   $i:" `ipconfig getifaddr $i`
  done
}

alias json="jq ."

alias serve="python -m SimpleHTTPServer"

# QuickLook
alias ql="qlmanage -p &>/dev/null"

function sl {
  if [ -d "$1" ]
  then
    mdfind -onlyin $@
  else
    mdfind $@
  fi
}
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

alias ..="cd .."
alias -- -="cd -"

if [ -f /usr/local/bin/src-hilite-lesspipe.sh ]; then
  export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
  export LESS=' -R '
  alias hl="source-highlight --failsafe --infer-lang -f esc --style-file=esc.style -i"
fi
