#!/usr/bin/env bash
# based on https://github.com/johnynfulleffect/ArchMatic

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
'python'
'python-pip'
'nodejs'
'npm'

'zsh'
'github-cli'
'neovim'
'wl-clipboard'
'ttf-nerd-fonts-symbols-mono'
'ttf-firacode-nerd'
'wezterm'
'zoxide'
'eza'
'ripgrep'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

chsh -s $(which zsh)
