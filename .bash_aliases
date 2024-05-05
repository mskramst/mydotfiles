# ------------------------------ aliases -----------------------------

# my aliases
alias ls='ls -h --color=auto'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias aptup='sudo apt-get update'
alias aptupg="sudo apt-get update && sudo apt-get upgrade"
alias used="du -sh"
alias gs="goog"   
alias ws="websearch" 
alias duck='duck'
alias gpt='mods'
alias gptls='mods --list'
alias gptshow='mods --show'
alias jc='javac *.java && java Main'

# common directories
alias start='cd $STARTANEW'
alias scripts='cd $SCRIPTS'
alias snippets='cd $SNIPPETS'
alias cde='cd $CODE'
alias gith='cd $GHREPOS'
alias dlvids='cd //media/stuff/DATA/dlvids'
alias mnt='cd /mnt/c/Users/m'
alias spa='npm create vite@latest'
alias pn='pnpm'
alias pnpmup='pnpm add -g pnpm'
alias pstart='pnpm start'
alias gistc='gh gist create -'
alias gistls='gh gist ls'
alias gisthelp='cat $STARTANEW/docs/gists-help.txt'

# editing config files
alias bext='vim ~/.bashrc_ext'
alias valias='vim ~/.bash_aliases'
alias vimc='vim ~/.vim/vimrc'
alias aliases='vim ~/.bash_aliases'
alias vimabbr='vim ~/.vim/vimabbrs.vim'
alias i3conf='vim ~/.config/i3/config'
alias bhist='vim ~/.bash_history'
alias alac='vim ~/.config/alacritty/alacritty.yml'
alias vimnotes='vim $STARTANEW/software/vim.md'
alias nvimc='nvim ~/.config/nvim/init.lua'
alias mynotes='vim $STARTANEW/mynotes.md'
alias hl='highlight -O ansi'
alias src='exec bash -l'     #reloads shell with all values (best)
alias download='yt-dlp -f best'

# software related 

# git
alias status="git status"
alias gita="git add -A ."
alias gitc="git commit -m"
alias gitac="git add -A . & git commit -m "
alias gitp="git push origin main && echo 'pushing main to origin'"
alias cfgpush='config push origin main'
alias myctags='ctags -R .'
alias pack='cat package.json'
alias publish='npm publish --access=public'
alias vpack='vim package.json'
alias readme="mdv README.md"

#tmux
alias t1="tmux select-window -t 1; echo 'switched to 1'"
alias t2="tmux select-window -t 2; echo 'switched to 2'"
alias t3="tmux select-window -t 3; echo 'switched to 3'"
alias tls="tmux list-windows"
alias tnot="tmux new-window && tmux rename-window -t 2 'notes'"
alias tdev="tmux new-window -t 3 && tmux rename-window -t 3 'dev';"
alias dev="tmux new -s dev -d"
alias play="tmux new -s play -d"
alias attach="tmux a -t"
#alias tkill="tmux kill-session -t 0"

#java/kotlin
alias gr='./gradlew'
alias grt='gradle test'
alias grr='gradle run'
alias gtasks='gradle tasks'

#php
alias comp='composer'
alias autoload='composer dump-autoload -o'

#python & vm
alias act='. venv/bin/activate'
alias deact='deactivate'

# setup for syncing dot files to and from multiple computers
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME' 

#useful
alias chmox='chmod +x'

alias ytget="yt-dlp -x --audio-format mp3"
alias yt="ytfzf -L"
alias ytlist="mpv -fs --playlist=newplaylist"
