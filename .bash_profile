export CLICOLOR=1

export HISTCONTROL=ignoredups

export GREP_OPTIONS="--color=auto -n"

source $HOME/work/settings/helpers.sh

# include local overrides
if [ -f ~/.bash_profile_local ]; then
   source ~/.bash_profile_local
fi
