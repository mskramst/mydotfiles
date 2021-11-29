source ~/.bash_git

# my aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sobash="source ~/.bashrc_ext && echo 'loading bashrc_ext'"

# common directories
alias start='cd $HOME/repos/github.com/$GITUSER/startanew'
alias scripts='cd $SCRIPTS'
alias snippets='cd $SNIPPETS'
alias dlvids='cd //media/stuff/DATA/dlvids'

# editing config files
alias bext='vim ~/.bashrc_ext'
alias vimc='vim ~/.vim/vimrc'
alias i3conf='vim ~/.config/i3/config'
alias balias='vim ~/.bash_aliases'
alias bhistory='vim ~/.bash_history'
alias alac='vim ~/.config/alacritty/alacritty.yml'

# git related 
alias gs="git status"
alias push="git push origin master && echo 'pushing master to origin'"
alias pushssh='git push ssh master'
alias myctags='ctags -R .'

# setup for syncing dot files to and from multiple computers
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME' 

#useful
alias chmox='chmod +x'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


