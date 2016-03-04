# ~/.zshrc

# Locale fix (for git/perl)
export LC_ALL=en_US.UTF-8

# Extra aliases
alias gpg='gpg2'
alias ipnote='cd ~/Documents/python/notebooks/; jupyter notebook; cd -'
alias shrc='source ~/.zshrc'
alias open='gnome-open'

# Activate bash-style completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Activate simple prompt
autoload -U promptinit
promptinit
prompt walters

# Load extra scripts
for file (~/.local/scripts/*); do
  source $file
done