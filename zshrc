# ~/.zshrc

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Theme setting (check login shell for tty consoles)
if [[ -o login ]]; then
  ZSH_THEME="clean"
else
  ZSH_THEME="agnoster"
fi

# Get rid of user@machine prompt
DEFAULT_USER=$(whoami)

# Oh-My-Zsh plugins (look at $ZSH/plugins)
plugins=(git nyan chucknorris ubuntu common-aliases)

source $ZSH/oh-my-zsh.sh

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

# Load extra scripts
for file (~/.local/scripts/*); do
  source $file
done

# Alias for thefuck
eval $(thefuck --alias)

# Add new line at the end of prompt
export PROMPT="$PROMPT
%# "
