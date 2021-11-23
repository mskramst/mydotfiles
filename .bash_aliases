source ~/.bash_git

# my aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias start='cd $HOME/repos/github.com/$GITUSER/startanew'
alias vimc='vim ~/.vim/vimrc'
alias scripts='cd $HOME/repos/github.com/$GITUSER/startanew/scripts'
alias bext='vim ~/.bashrc_ext'
alias balias='vim ~/.bash_aliases'
alias bhistory='vim ~/.bash_history'
alias mycode='cd ~/Code'
alias alac='vim ~/.config/alacritty/alacritty.yml'
alias push='git push origin master'
alias pushssh='git push ssh master'
alias dlvids='cd //media/stuff/DATA/dlvids'
alias i3conf='vim ~/.config/i3/config'
alias dlvids='cd //media/stuff/DATA/dlvids'
alias myctags='ctags -R .'
alias chmox='chmod +x'
alias gs="git status"
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME' 
