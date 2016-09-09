# ~/.zshenv

# This file defines most env variables

# Load system variables
if [ -e /etc/profile.env ] ; then
	. /etc/profile.env
fi

if [ "$EUID" = "0" ] || [ "$USER" = "root" ] ; then
  PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${ROOTPATH}"
else
  PATH="/usr/local/bin:/usr/bin:/bin:${PATH}"
fi

export PATH
unset ROOTPATH

# Path
export PATH="$HOME/.local/bin:${PATH}"
export MANPATH="$HOME/.local/share/man:${MANPATH}"

# Local stuff
export PYTHONPATH=$HOME/.local/python:$PYTHONPATH

# Editor
export EDITOR="/usr/bin/vim"

# Akantu path
export AKANTU=$HOME/Documents/akantu

# Add akantu to various PATHS
export PYTHONPATH=$AKANTU/build/python:$PYTHONPATH
export LD_LIBRARY_PATH=$AKANTU/build/src:$LD_LIBRARY_PATH

# Add BlackDynamite to various paths
export PATH=$HOME/Documents/blackdynamite/bin/:$PATH
export PYTHONPATH=$HOME/Documents/blackdynamite/python:$PYTHONPATH

# Contact path
export CONTACT=$HOME/Documents/contact

# Add Tamaas to various paths
export TAMAAS=$HOME/Documents/tamaas
export PYTHONPATH=$TAMAAS/build/python:$TAMAAS/gpu/build/python:$PYTHONPATH
export LD_LIBRARY_PATH=$TAMAAS/build/src:$LD_LIBRARY_PATH

# Path for latex beamer metropolis theme
export TEXINPUTS=$HOME/.local/repos/mtheme:$TEXINPUTS

# Path for Score-P
export PATH=/opt/scorep/bin:$PATH

# Path for Cuda SDK
export PATH=/opt/cuda/bin:$PATH

# Paraview python bindings
export PYTHONPATH=/usr/lib64/paraview-4.4/site-packages:/usr/lib64/paraview-4.4:$PYTHONPATH

# Path for spotify
#export PATH=$HOME/.local/spotify-client:$PATH
#export LD_LIBRARY_PATH=$HOME/.local/spotify-client:$LD_LIBRARY_PATH
