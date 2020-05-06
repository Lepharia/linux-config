# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases
alias fuck='sudo $(history -p \!\!)'
alias python='python3'
alias py='python3'
alias wtr='curl wttr.in/Dortmund?n'
alias ls='ls -al'

# Since the accident... 
alias rm='rm -Iv --one-file-system'

# Import of user functions
if [ -d ~/.bashsrc ];
then
	for f in ~/.bashsrc/*;
	do
		source $f
	done
fi

# Start tmux on start
if ! tmux info &> /dev/null; then
	tmux
elif [ -z $TMUX ]; then
	tmux a
fi

# Show Git branch info in command prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
