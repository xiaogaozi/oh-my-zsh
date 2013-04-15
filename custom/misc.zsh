export EDITOR='vim -f'
export PHABRICATOR_ENV=custom/myconfig

export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$(brew --prefix)/share/python:$(brew --prefix)/share/npm/bin:$(rbenv prefix)/bin:$HOME/bin:$PATH
defaults write $HOME/.MacOSX/environment PATH "$PATH"

fpath=($(brew --prefix)/share/zsh-completions $fpath)

LESSOPEN="|lesspipe.sh %s"; export LESSOPEN
