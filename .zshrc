# add note alias
alias update-site="ssh lightsail /var/www/site/update.sh"

# add helpers to path
export PATH=$PATH:~/.helpers

# add brew to path
export PATH=/opt/homebrew/bin:$PATH

# add local bin to path
export PATH=/usr/local/bin:$PATH

# alias skim to open a file in skim
alias skim="open -a Skim"

# star wars
alias may-the-force="ssh -p 1977 sw.taigrr.com"

# add todo
alias todo="nvim ~/todo/TODO.md"

# setup pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
