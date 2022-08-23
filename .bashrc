# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# gcc
# module load gcc-4.9.2

# pkg-config
export PKG_CONFIG_PATH="$HOME/local/lib/pkgconfig"

# CUDA
# module load cuda-10.2
module load cuda-11.1.1
# export PATH="$HOME/local/cuda-10.2/bin:$PATH"
# export LD_LIBRARY_PATH="$HOME/local/cuda-10.2/lib64:$LD_LIBRARY_PATH"

# cuDNN
# export LD_LIBRARY_PATH="$HOME/lib/cuDNN/lib64:$LD_LIBRARY_PATH"

# MATLAB
export EDITOR=nano
# module load matlab-9.3

export PATH="$HOME/anaconda3/bin:$PATH"

# local
export PATH="$HOME/local/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/local/lib64:$LD_LIBRARY_PATH"
