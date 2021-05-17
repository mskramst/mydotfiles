function Resume {  
    fg
    zle push-input 
    BUFFER=""
    zle accept-line
} 

zle -N Resume
bindkey "^Z" Resume


function sc() {
  if [ $2 ]
  then
    shortcut $1 $2
  elif [ $1 ]
  then
    cd "$(shortcut $1)"
  else
    printf "Usage:\n\tSet shortcut: sc <name> <path>\n\tGo to shortcut: sc <name>\n"
  fi
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mskramst/.sdkman"
[[ -s "/home/mskramst/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mskramst/.sdkman/bin/sdkman-init.sh"
