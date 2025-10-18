ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

plugins=(git)

source ~/.config/zsh/.oh-my-zsh/oh-my-zsh.sh

alias c="clear"
alias fuck="sudo !!"

alias oo="cd ~/core/02-vault/drainbank/ && nvim ~/core/02-vault/drainbank/todo.md "
alias ocn="cd ~/.config/nvim/lua/ && nvim ~/.config/nvim/init.lua"

alias leet="nvim leetcode.nvim"
alias za="zathura"

alias ls="ls -a --color=auto"
alias la="ls -lah --color=auto"

bindkey "^j" history-search-forward
bindkey "^k" history-search-backward

bindkey "^h" beginning-of-line
bindkey "^l" end-of-line
bindkey "^b" backward-word
bindkey "^w" forward-word
bindkey "^d" backward-kill-word

eval "$(zoxide init zsh)"
