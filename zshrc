# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Reload oh-my-zsh configuration
source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

plugins=(git brew gem OSX pod rails rvm scala sublime web-search rbates zsh-syntax-highlighting z)

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/Users/bilby91/.git-extensions
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin

# Added by travis gem
[ -f /Users/bilby91/.travis/travis.sh ] && source /Users/bilby91/.travis/travis.sh

# fzf Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
