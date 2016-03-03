# ~/.zshenv

# This file defines most env variables

# Path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# Editor
export EDITOR="/usr/bin/vim"

# Akantu path
export AKANTU=$HOME/Documents/akantu

# Add akantu to various PATHS
export PYTHONPATH=$PYTHONPATH:$AKANTU/build/python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$AKANTU/build/src

# Add BEM to various paths
export PYTHONPATH=$PYTHONPATH:$HOME/Documents/bem-python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/Documents/bem-python

# Add BlackDynamite to various paths
export PATH=$PATH:$HOME/Documents/blackdynamite/bin/
export PYTHONPATH=$PYTHONPATH:$HOME/Documents/blackdynamite/python

# Contact path
export CONTACT=$HOME/Documents/python/contact

# Add Tamaas to various paths
export TAMAAS=$HOME/Documents/tamaas
export PYTHONPATH=$PYTHONPATH:$TAMAAS/build/python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TAMAAS/build/src

# Path for latex beamer metropolis theme
export TEXINPUTS=$TEXINPUTS:$HOME/.local/repos/mtheme