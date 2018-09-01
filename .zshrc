# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

# We need to turn on shared history and ignoring dupes...
setopt histignorealldups sharehistory

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# unset MULTIBYTE so that we have better terminal support for Ctrl/Meta/Alt keys
unsetopt MULTIBYTE

# Load our keys with zkbd
autoload -Uz zkbd
bindkey -v
if [[ -f ~/.zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE} ]]; then
    source ~/.zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE}
else
    echo "COULD NOT LOAD: ~/.zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE}"
    echo "WARNING: Keybindings may not be set correctly!"
    echo "Execute \`zkbd\` to create bindings."
fi

# Add our bindings
[[ -n "${key[Home]}" ]]    && bindkey "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}" ]]     && bindkey "${key[End]}"     end-of-line
[[ -n "${key[Insert]}" ]]  && bindkey "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}" ]]  && bindkey "${key[Delete]}"  delete-char
[[ -n "${key[Up]}" ]]      && bindkey "${key[Up]}"      up-line-or-search
[[ -n "${key[Down]}" ]]    && bindkey "${key[Down]}"    down-line-or-search
[[ -n "${key[Left]}" ]]    && bindkey "${key[Left]}"    backward-char
[[ -n "${key[Right]}" ]]   && bindkey "${key[Right]}"   forward-char
[[ -n "${key[C-Up]}" ]]    && bindkey "${key[C-Up]}"    history-beginning-search-backward
[[ -n "${key[C-Down]}" ]]  && bindkey "${key[C-Down]}"  history-beginning-search-forward
[[ -n "${key[C-Left]}" ]]  && bindkey "${key[C-Left]}"  backward-word
[[ -n "${key[C-Right]}" ]] && bindkey "${key[C-Right]}" forward-word
[[ -n "${key[C-R]}" ]]     && bindkey "${key[C-R]}"     history-incremental-search-backward
[[ -n "${key[C-T]}" ]]     && bindkey "${key[C-T]}"     history-incremental-search-forward

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Load our shared SHELLRC file
source ~/.shrc
