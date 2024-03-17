# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/m/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=
(
  #git
  ##vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ------------------------ environmental variables -------------------------------

export GITUSER="mskramst"
export STARTANEW="$HOME/repos/github.com/$GITUSER/startanew"
export SNIPPETS="$HOME/repos/github.com/$GITUSER/startanew/snippets"
export SCRIPTS="$HOME/repos/github.com/$GITUSER/startanew/scripts"
export GHREPOS="$HOME/repos/github.com/$GITUSER/"
export NOTES="$HOME/repos/github.com/$GITUSER/startanew/writing/notes"
export PATH="$HOME/repos/github.com/$GITUSER/startanew/scripts:$PATH"
export DESKTOP="$HOME/Desktop"
export DOCUMENTS="$HOME/Documents"
export DOWNLOADS="$HOME/Downloads"
export TEMPLATES="$HOME/Templates"
export PUBLIC="$HOME/Public"
export PRIVATE="$HOME/Private"
export PICTURES="$HOME/Pictures"
export MUSIC="$HOME/Music"
export VIDEOS="$HOME/Videos"
export CODE="$HOME/Code"
export HRULEWIDTH=73
export EDITOR=vi
export EDITOR_PREFIX=vi
export VISUAL=vi
export TERM=xterm-256color
export LESS_TERMCAP_mb="[35m" # magenta
export LESS_TERMCAP_md="[33m" # yellow
export LESS_TERMCAP_me="" # "0m"
export LESS_TERMCAP_se="" # "0m"
export LESS_TERMCAP_so="[34m" # blue
export LESS_TERMCAP_ue="" # "0m"
export LESS_TERMCAP_us="[4m"  # underline

# ----------------------------- aliases -------------------------------

alias vim="nvim"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# ----------------------------- history -------------------------------

set -o vi
HISTCONTROL=ignoreboth
HISTSIZE=2000
HISTFILESIZE=2000

# ------------------------------- path -------------------------------

pathappend() {
  declare arg
  for arg in "$@"; do
    test -d "${arg}" || continue
    PATH=${PATH//:${arg}:/:}
    PATH=${PATH/#${arg}:/}
    PATH=${PATH/%:${arg}/}
    export PATH="${PATH:+"${PATH}:"}${arg}"
  done
}

pathprepend() {
  for ARG in "$@"; do
    test -d "${ARG}" || continue
    PATH=${PATH//:${ARG}:/:}
    PATH=${PATH/#${ARG}:/}
    PATH=${PATH/%:${ARG}/}
    export PATH="${ARG}${PATH:+":${PATH}"}"
  done
}

# override as needed in .bashrc_{personal,private,work}
# several utilities depend on SCRIPTS being in a github repo
#export SCRIPTS=~/startanew/scripts
#mkdir -p "$SCRIPTS" &>/dev/null

export PATH="~/repos/github.com/mskramst/startanew/scripts:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
 eval "$(/opt/homebrew/bin/brew shellenv)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

if [ -e /home/mskramst/.nix-profile/etc/profile.d/nix.sh ]; then . /home/mskramst/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
