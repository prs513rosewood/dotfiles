# ~/.zshrc

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Get rid of user@machine prompt
DEFAULT_USER=$(whoami)

# Oh-My-Zsh plugins (look at $ZSH/plugins)
plugins=(git nyan chucknorris ubuntu common-aliases)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Loads powerline prompt
POWERLINE_PROMPT=/usr/lib64/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
if [[ -f $POWERLINE_PROMPT && -o interactive ]]; then
  . $POWERLINE_PROMPT
else
  ZSH_THEME="clean"
  source $ZSH/oh-my-zsh.sh
fi

# Locale fix (for git/perl)
export LC_ALL=en_US.UTF-8

# Extra aliases
alias gpg='gpg2'
alias ipnote='cd ~/Documents/python/notebooks/; jupyter notebook; cd -'
alias shrc='source ~/.zshrc'
alias open='xdg-open'
alias tmux='TERM=xterm-256color tmux'
alias tmc='scons -C $TAMAAS -j4'
alias tmcc='tmc -c && tmc'
alias tmcr='CXXFLAGS="-march=native -ftree-vectorize" tmc build_type=release'

# Activate bash-style completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Load extra scripts
for file (~/.local/scripts/*); do
  source $file
done

# Add new line at the end of prompt
export PROMPT="$PROMPT
%# "
