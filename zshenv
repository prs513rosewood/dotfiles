# ~/.zshenv

# This file defines most env variables

# Path
export PATH="$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export MANPATH="$HOME/.local/share/man:"

# Local stuff
export PYTHONPATH=$PYTHONPATH:$HOME/.local/python

# Editor
export EDITOR="/usr/bin/vim"

# Akantu path
export AKANTU=$HOME/Documents/akantu

# Add akantu to various PATHS
export PYTHONPATH=$PYTHONPATH:$AKANTU/build/python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$AKANTU/build/src

# Add BlackDynamite to various paths
export PATH=$PATH:$HOME/Documents/blackdynamite/bin/
export PYTHONPATH=$PYTHONPATH:$HOME/Documents/blackdynamite/python

# Contact path
export CONTACT=$HOME/Documents/contact

# Add Tamaas to various paths
export TAMAAS=$HOME/Documents/tamaas
export PYTHONPATH=$PYTHONPATH:$TAMAAS/build/python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TAMAAS/build/src

# Path for latex beamer metropolis theme
export TEXINPUTS=$TEXINPUTS:$HOME/.local/repos/mtheme

# Path for Score-P
export PATH=$PATH:/opt/scorep/bin

# Path for Cuda SDK
export PATH=$PATH:/usr/local/cuda-7.5/bin
