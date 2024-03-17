# add note alias
alias update-site="ssh lightsail /var/www/site/update.sh"

# add ssh helpers to path
export PATH=$PATH:~/.ssh/helpers

# add brew to path
export PATH=/opt/homebrew/bin:$PATH

# add local bin to path
export PATH=/usr/local/bin:$PATH

# alias skim to open a file in skim
alias skim="open -a Skim"

# star wars
alias may-the-force="ssh -p 1977 sw.taigrr.com"

# setup pyenv TODO
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
