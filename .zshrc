# todo: once the nvim config is correctly set, edit this to nvim
export EDITOR=nvim 

## START Starship configuration
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# The following is due to conflict with zsh vim mode:
# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select >/dev/null || \
  {
    echo "Load starship"
    eval "$(/usr/local/bin/starship init zsh)"
  }

## END Startship configuration

## START atuin config
## source $HOME/.atuin/bin/env 
## eval "$(atuin init zsh --disable-up-arrow)"
## END atuin config

# START ZSH config

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="" # no colour for cursor
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="" # no colour for cursor 
# Making the following variable non empty forces the plugin to only do prefix matching instead of fuzzy matching-ish
export HISTORY_SUBSTRING_SEARCH_PREFIXED="prefix" 

#source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

#zle -N viins # This makes sure the default mode when a window is started is INSERT mode

#bindkey -M viins '^[[A' history-substring-search-up
#bindkey -M viins '^[[B' history-substring-search-down
#bindkey -M vicmd '^[[A' up-line-or-search
#bindkey -M vicmd '^[[B' down-line-or-search
#bindkey -M visual '^[[A' up-line-or-search
#bindkey -M visual '^[[B' down-line-or-search

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[v" edit-command-line
# END ZSH config

