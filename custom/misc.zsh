export EDITOR='vim -f'
export LANG=zh_CN.UTF-8
export GOPATH=$HOME/go
export SPARK_HOME=/opt/boxen/homebrew/Cellar/apache-spark/1.3.1_1/libexec

# Custom PATH
export PATH=$HOME/bin:$PATH:$GOPATH/bin
defaults write $HOME/.MacOSX/environment PATH "$PATH"

# completion
fpath=($(brew --prefix)/share/zsh/site-functions $(brew --prefix)/share/zsh-completions $fpath)

# less pipe
LESSOPEN="|lesspipe.sh %s"; export LESSOPEN

# SSH agent
if [[ (-f ~/.ssh/id_rsa_gcj) && ! $(ssh-add -l | grep .ssh/id_rsa_gcj) ]]; then
  ssh-add -D
  ssh-add ~/.ssh/id_rsa_gcj
fi
