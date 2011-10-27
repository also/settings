export CLICOLOR=1

export HISTCONTROL=ignoredups

# include local overrides
if [ -f ~/.bash_profile_local ]; then
   source ~/.bash_profile_local
fi
