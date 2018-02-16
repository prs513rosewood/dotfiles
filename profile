# ~/.profile

# Load system variables
if [ -e /etc/profile.env ] ; then
	. /etc/profile.env
fi

unset ROOTPATH

# Path
PATH="$HOME/.local/bin:${PATH}"
MANPATH="$HOME/.local/share/man:${MANPATH}"

# Editor
export EDITOR="/usr/bin/vim"

# Akantu path
export AKANTU=$HOME/Documents/akantu

# Add akantu to various PATHS
PYTHONPATH=$AKANTU/build/python:$PYTHONPATH
LD_LIBRARY_PATH=$AKANTU/build/src:$LD_LIBRARY_PATH

# Contact path
export CONTACT=$HOME/Documents/contact

# Add Tamaas to various paths
export TAMAAS=$HOME/Documents/tamaas
PYTHONPATH=$TAMAAS/build/python:$TAMAAS/gpu/build/python:$PYTHONPATH
#export LD_LIBRARY_PATH=$TAMAAS/build/src:$LD_LIBRARY_PATH

# Path for latex beamer metropolis theme
export TEXINPUTS=$HOME/.local/repos/mtheme:$TEXINPUTS

# Finally, export
export PATH
export PYTHONPATH
export LD_LIBRARY_PATH

export PATH="$HOME/.cargo/bin:$PATH"
