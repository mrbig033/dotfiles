# -*- mode: sh -*-

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Nodenv - transferir para bash_profile
export PATH="$HOME/.nodenv/versions/12.9.0/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Load pyenv automatically by adding
# the following to ~/.bashrc:

export PATH="/home/jerry/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
