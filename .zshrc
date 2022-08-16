export ZSH=${HOME}/.oh-my-zsh

plugins=(
  git
)

source ${ZSH}/oh-my-zsh.sh

# Set iterm2 bindings if needed
if [[ $(which bindkey) ]]; then
  bindkey "[D" backward-word
  bindkey "[C" forward-word
fi

if [[ -f ${HOME}/.zlocal ]]; then
  source ${HOME}/.zlocal
fi
