export EDITOR='vim -f'
export GOPATH=$HOME/go

# Custom PATH
export PATH=$HOME/bin:$PATH:$GOPATH/bin
defaults write $HOME/.MacOSX/environment PATH "$PATH"

# Completion
fpath=($(brew --prefix)/share/zsh/site-functions $(brew --prefix)/share/zsh-completions $fpath)

# less pipe
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
