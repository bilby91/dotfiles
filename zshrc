# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Powerlevel 9k configurations
PL9K_DIR_BG_COLOR="none"
PL9K_DIR_COLOR="white"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs time)
POWERLEVEL9K_DIR_HOME_BACKGROUND=$PL9K_DIR_BG_COLOR
POWERLEVEL9K_DIR_HOME_FOREGROUND=$PL9K_DIR_COLOR
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$PL9K_DIR_BG_COLOR
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$PL9K_DIR_COLOR
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$PL9K_DIR_BG_COLOR
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=$PL9K_DIR_COLOR
POWERLEVEL9K_DIR_ETC_BACKGROUND=$PL9K_DIR_BG_COLOR
POWERLEVEL9K_DIR_ETC_FOREGROUND=$PL9K_DIR_COLOR

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME='powerlevel9k/powerlevel9k'

plugins=(git brew gem pod rvm zsh-syntax-highlighting z docker docker-compose kubectl aws)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Reload oh-my-zsh configuration
# Added by travis gem
[ -f /Users/bilby91/.travis/travis.sh ] && source /Users/bilby91/.travis/travis.sh

# fzf Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$PATH"

# Shell completion for jira.
eval "$(jira --completion-script-zsh)"
