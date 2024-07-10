# ------------------------------ aliases -----------------------------

# my aliases
alias ls='ls -h --color=auto'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias chmox='chmod +x'
alias aptup='sudo apt-get update'
alias aptupg="sudo apt-get update && sudo apt-get upgrade"
alias used="du -sh"
alias gs="goog"   
alias ws="websearch" 
alias gpt='mods'
alias gptls='mods --list'
alias gptshow='mods --show'
alias lang="source ~/.lang_aliases"

# common directories
alias start='cd $STARTANEW'
alias scripts='cd $SCRIPTS'
alias snippets='cd $SNIPPETS'
alias gith='cd $GHREPOS'
alias saved='cd $STARTANEW/saved'
alias notes='cd $STARTANEW/writing/notes'
alias dlvids='cd //media/stuff/DATA/dlvids'
alias mnt='cd /mnt/c/Users/m'

alias gistc='gh gist create -'
alias newgist='gh gist create $STARTANEW/saved/gist'
alias gistls='gh gist ls'
alias gisthelp='cat $STARTANEW/docs/gists-help.txt'

# editing config files
alias hl='highlight -O ansi'
alias src='exec bash -l'     #reloads shell with all values (best)
alias download='yt-dlp -f best'
alias myctags='ctags -R .'
alias readme="mdv README.md"

# setup for syncing dot files to and from multiple computers
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME' 

# git
alias status="git status"
alias gita="git add -A ."
alias gitc="git commit -m"
alias gitac="git add -A . & git commit -m"
alias gitp="git push origin main && echo 'pushing main to origin'"
alias cfgpush='config push origin main'

#tmux
alias tls="tmux list-windows"
alias tnot="tmux new -s work -d && tmux rename-window -t 1 'code' && tmux new-window && tmux rename-window -t 2 'run'"
alias tdev="tmux new-window -t 3 && tmux rename-window -t 3 'dev';"
alias tcode="tmux new -s work -d && && tmux rename-window"
alias dev="tmux new -s dev -d"
alias play="tmux new -s play -d"
alias attach="tmux a -t"

#useful
alias ytget="yt-dlp -x --audio-format mp3"
alias yt="ytfzf -L"
alias ytlist="mpv -fs --playlist=newplaylist"
# open the last note updated filename saved in this file each time note added
alias last="vim $(cat $STARTANEW/last)"
# open the last modified file in a directory
alias vlast="vim $(ls -t | head -n1)"
# save last cli cmd to file
alias savelast='history -p !! > $STARTANEW/lastcmd'
# cat the last saved buffer
alias catbuf='cat $STARTANEW/saved/buf'

alias stripws="sed -i 's/[[:space:]]*$//'"  #strip white spaces at end of line in files
