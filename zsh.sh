plugins=(
  git
  docker
#  docker-compose
  last-working-dir
  vi-mode
  sudo
  z
  extract
#  tmux
#  zsh-autosuggestions
#  zsh-syntax-highlighting
)


alias s='source ~/.zshrc'
export DEBUG=true
export SCALA_HOME=/opt/homebrew/bin/scala
export PATH=$PATH:$GOROOT/bin:$SCALA_HOME/bin:$HOME/.cargo/bin:/usr/local/bin:/opt/homebrew/bin

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}

_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

KEYTIMEOUT=1
DISABLE_AUTO_UPDATE=true
if [[ "$DISABLE_AUTO_UPDATE" != true ]]; then
	echo 'need update'
fi
