# ZSH Configuration

eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Pyenv ---------------------------------------------------------------------------

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# --- ZSH PLUGINS ---------------------------------------------------------------------

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker
)
source $ZSH/oh-my-zsh.sh

# --- ALIASES -------------------------------------------------------------------------

# Include custom aliases from file
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

# --- RUST ----------------------------------------------------------------------------

. "$HOME/.cargo/env"

# --- ZOXIDE --------------------------------------------------------------------------

eval "$(zoxide init zsh)"

# --- DIRENV --------------------------------------------------------------------------

eval "$(direnv hook zsh)"


# --- PROMPT CONFIGURATION ------------------------------------------------------------

# Set up Starship prompt
eval "$(starship init zsh)"

# --- ZELLIJ --------------------------------------------------------------------------

if [[ -z "$ZELLIJ" ]]; then
  zellij --layout session-picker

  if [[ "$ZELLIJ_AUTO_EXIT" == true ]]; then
    exit
  fi
fi

# --- FIN -----------------------------------------------------------------------------
