# path shortcuts
alias cdc='cd $HOME/code'
alias cdr='cd $HOME/repo'
alias cdd='cd /data/$USER'
alias cdd2='cd /data2/$USER'
alias cdd3='cd /data3/$USER'
alias cds='cd /scratch/$USER'

# screen
alias sr='screen -r'
alias sc='screen -S'
alias sl='screen -ls'
alias s1='screen -r mt1'
alias s2='screen -r mt2'
alias s3='screen -r mt3'
alias s4='screen -r mt4'
alias s5='screen -r mt5'
alias s6='screen -r mt6'
alias s7='screen -r mt7'
alias s8='screen -r mt8'
alias s9='screen -r mt9'

# tmux
alias tc='tmux new -s'
alias tat='tmux a -t'
alias tl='tmux ls'

# NVIDIA
alias ns='nvidia-smi'
alias showgpu='printenv CUDA_VISIBLE_DEVICES'
alias unsetgpu='unset CUDA_VISIBLE_DEVICES'
function gpu()
{
        export CUDA_VISIBLE_DEVICES=$1
}

# ssh
function sshc()
{
	ssh trinity-$1
}

# Port forwarding
function forward()
{
        ssh -L 0.0.0.0:$1:0.0.0.0:$1 $2
}

# git
function gsync()
{
    git pull origin master
    if [ "$#" -eq 0 ]; then
        local msg=Sync
    else
        local msg=$1
    fi
    git add .
    git commit -a -m "${msg}"
    git push
}

function gmatchorigin()
{
    if [ "$#" -eq 0 ]; then
        local branch=master
    else
        local branch=$1
    fi
    git fetch --all
    git reset --hard origin/${branch}
}

# Anaconda
function togana()
{
	local anapath=$HOME/anaconda3/bin
	if [[ "$PATH" == *"${anapath}"* ]]; then
			PATH=:$PATH:
			PATH=${PATH//:${anapath}:/:}
			PATH=${PATH#:}
			export PATH=${PATH%:}
			echo Anaconda disabled
	else
			export PATH="$HOME/anaconda3/bin:$PATH"
			echo Anaconda enabled
	fi
}

# HTML4Vision
alias srv='python -m html4vision.server'

# parscript
alias parworker='python -m parscript.worker'
alias pardispatch='python -m parscript.dispatcher'
