## Installation
```sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/mrcxmrj/dotfiles.git $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
dotfiles submodule init
dotfiles submodule update
```
## Adding new files
```sh
dotfiles add <new_file>
dotfiles commit
```

### Adding new plugins
```sh
dotfiles submodule add <github_url>
```
