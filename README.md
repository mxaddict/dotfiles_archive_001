My DOTFILES (~/.)
===

Why?
---
Because I noticed that copying my Custom VIM, GIT, BASH and TMUX configs to
work stations or servers took too much effort.

Notes
---
- will overwrite any custom VIM configs that you have!
- will overwrite any custom BASHRC configs that you have!
- will overwrite any custom TMUX configs that you have!
- requires: vim, curl, git, cmake, build-essential, python-dev, libclang-dev libboost-all-dev
- optional: zsh, tmux
- if you want to use `zsh` you will need to run `zkbd` to get the correct keys for your bindings
- if you want to use `tmux` you will need to run the install step inside of tmux to load it's configs

Installation
---
```shell
# Install requirements START
## FOR Ubuntu/Debian
sudo apt-get install vim-gtk curl git cmake build-essential python-dev tmux clang -y

## OR

## FOR Arch
sudo pacman -S vim curl git cmake base-devel python tmux clang -y

# Install requirements END

# seriously, that's it! and follow the prompts!
sh <(curl -sL https://raw.githubusercontent.com/mxaddict/dotfiles/master/install)
```

Platform support
---
I have only tested this on ubuntu and debian based systems.

Suggestions
---
Use [NeoVim](https://neovim.io/)

Docs
---
TODO: Make these...
