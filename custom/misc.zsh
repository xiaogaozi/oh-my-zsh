export EDITOR='vim -f'
export LANG=zh_CN.UTF-8
export PHABRICATOR_ENV=custom/myconfig

# Custom PATH
export PATH=$HOME/bin:$PATH
defaults write $HOME/.MacOSX/environment PATH "$PATH"

# completion
fpath=($(brew --prefix)/share/zsh/site-functions $(brew --prefix)/share/zsh-completions $fpath)

# less pipe
LESSOPEN="|lesspipe.sh %s"; export LESSOPEN
