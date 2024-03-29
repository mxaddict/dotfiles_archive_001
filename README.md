My DOTFILES (~/.)
===

Why?
---
Because I noticed that copying my Custom VIM, GIT, SHELL and TMUX configs to
work stations or servers took too much effort.

Notes
---
- will overwrite any custom VIM configs that you have!
- will overwrite any custom BASHRC/ZSHRC configs that you have!
- will overwrite any custom TMUX configs that you have!
- if you want to use `zsh` you will need to run `zkbd` to get the correct keys for your bindings
- if you want to use `tmux` you will need to run the install step inside of tmux to load it's configs
- if you want to use `tmux` you will need to run `zkbd` inside `tmux` as well when using `zsh`

Installation
---
```shell
# Install requirements START
## FOR Ubuntu/Debian
sudo apt install neovim xclip curl git cmake build-essential python3-dev python3-pip tmux clang clangd ripgrep cargo -y
cargo install devicon-lookup
sudo pip3 install neovim
# Install requirements END

# seriously, that's it! and follow the prompts!
sh -c "$(curl -sL https://raw.githubusercontent.com/mxaddict/dotfiles/master/install)"
```

Optional Fonts
---
Download and install [NERD FONTS](https://github.com/ryanoasis/nerd-fonts)

Platform support
---
I have only tested this on ubuntu and debian based systems.

Suggestions
---
Use [NeoVim](https://neovim.io/)
