# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/401189/.oh-my-zsh

# install proper icon aliasses
source $ZSH/custom/fonts/Inconsolata-Awesome.sh

# install notification plugin
source $ZSH/custom/plugins/push_notification/push_notification.plugin.zsh

COMPLETION_WAITING_DOTS="true"
setopt HIST_EXPIRE_DUPS_FIRST  # ignore command starts with space from being added to history


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_ORDER=(
  dir
#  nvm
  go
  git
  status
)

BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_PROMPT_CHAR="\$ "
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_GIT_EXTENDED=true
BULLETTRAIN_GIT_PREFIX="\\u$CODEPOINT_OF_OCTICONS_GIT_BRANCH "
BULLETTRAIN_GIT_CLEAN=""
BULLETTRAIN_GIT_DIRTY=""
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_COMMIT_SHOW=true
BULLETTRAIN_GIT_COMMIT_BG_COLOR="black"
BULLETTRAIN_GIT_COMMIT_FG_COLOR="blue"
BULLETTRAIN_GO_BG="006"
BULLETTRAIN_GO_FG="black"
BULLETTRAIN_GO_PREFIX="go"

# CIRCLES
BULLETTRAIN_GIT_UNTRACKED=" \\u$CODEPOINT_OF_AWESOME_QUESTION_SIGN "
BULLETTRAIN_GIT_ADDED=" \\u$CODEPOINT_OF_AWESOME_PLUS_SIGN "
BULLETTRAIN_GIT_MODIFIED=" \\u$CODEPOINT_OF_AWESOME_DOT_CIRCLE_ALT "
BULLETTRAIN_GIT_DELETED=" \\u$CODEPOINT_OF_AWESOME_MINUS_SIGN "
BULLETTRAIN_GIT_AHEAD=" \\u$CODEPOINT_OF_AWESOME_UPLOAD "
BULLETTRAIN_GIT_BEHIND=" \\u$CODEPOINT_OF_AWESOME_DOWNLOAD "
BULLETTRAIN_GIT_STASHED=" \\u$CODEPOINT_OF_AWESOME_INBOX"
ZSH_THEME_GIT_PROMPT_STASHED=" \\u$CODEPOINT_OF_AWESOME_CIRCLE_BLANK"

# PHATT
BULLETTRAIN_GIT_UNTRACKED=" \\u$CODEPOINT_OF_AWESOME_QUESTION "
BULLETTRAIN_GIT_ADDED=" \\u$CODEPOINT_OF_AWESOME_PLUS "
BULLETTRAIN_GIT_MODIFIED=" \\u$CODEPOINT_OF_AWESOME_ASTERISK "
BULLETTRAIN_GIT_DELETED=" \\u$CODEPOINT_OF_AWESOME_MINUS "
BULLETTRAIN_GIT_AHEAD=" \\u$CODEPOINT_OF_AWESOME_ARROW_UP "
BULLETTRAIN_GIT_BEHIND=" \\u$CODEPOINT_OF_AWESOME_ARROW_DOWN "
BULLETTRAIN_GIT_STASHED=" \\u$CODEPOINT_OF_OCTICONS_THREE_BARS "
BULLETTRAIN_GIT_DIVERGED=""
ZSH_THEME_GIT_PROMPT_STASHED=" \\u$CODEPOINT_OF_AWESOME_BRIEFCASE"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias code="open -a Visual\ Studio\ Code"
alias git=hub
alias marked="open -a Marked\ 2 $*"
alias finder="open -a Finder $*"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# add autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

func myip() {
	ip=`ifconfig | grep 10.8 | cut -d " " -f 2`
	echo ${ip} | pbcopy
	echo "\e[1m${ip}\t\e[2m(It's also copied in your clipboard)"
}

# Set costa digital unit specific "secret" vars
#. ~/Sources/envvars.sh
export GOROOT=/usr/local/opt/go/libexec/
export GOPATH=~/go
export PATH=$PATH:$GOROOT:$GOPATH/bin:~/Sources/cdu-aws-base/

eval "$(direnv hook zsh)"
