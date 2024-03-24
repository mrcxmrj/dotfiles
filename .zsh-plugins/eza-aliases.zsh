# https://github.com/DarrinTisdale/zsh-aliases-exa but for eza

if [[ -z $commands[eza] ]]; then
    echo 'eza is not installed. See https://github.com/eza-community/eza'
    return 1
fi

alias ls='eza --grid --color auto --icons --sort=type'
alias ll='eza --long --color always --icons --sort=type'
alias la='eza --grid --all --color auto --icons --sort=type'
alias lla='eza --long --all --color auto --icons --sort=type'
