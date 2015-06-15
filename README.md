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
- requires: vim, curl, git, cmake, build-essential, python-dev, tmux, libclang-dev libboost-all-dev
- optional: zsh

Installation
---
```shell
# Install requirements START
## FOR Ubuntu/Debian
sudo apt-get install vim-gtk curl git cmake build-essential python-dev tmux libclang-dev libboost-all-dev -y

## OR

## FOR Babun
pact install vim curl git cmake gcc-core gcc-g++ python tmux libclang-devel libboost-devel

# Install requirements END

# seriously, that's it! and follow the prompts!
sh <(curl -sL https://raw.githubusercontent.com/mxaddict/dotfiles/master/install)
```

Legacy Dotfiles
---
Looking for my old dotfiles? I moved them [here](https://github.com/mxaddict/dotfiles_legacy.git)

Docs
---
TODO: Make these...
