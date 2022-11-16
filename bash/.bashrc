# .bashrc

# Disable C-s/C-q flow control
stty -ixon

# Record non repeat command history
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="history -n; history -w; history -c; history -r; ${PROMPT_COMMAND}"

# Enable history completion
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Improve completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

# Customize alias
[[ -f ~/.aliases ]] && source ~/.aliases

# Use starship prompt
[[ -x /usr/local/bin/starship ]] && eval "$(starship init bash)"

# Set front-end environment
[[ -x ~/.local/share/pnpm/pnpm ]] && export PATH=~/.local/share/pnpm:${PATH}
