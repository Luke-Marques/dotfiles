starship init fish | source

# Ensure your critical universals exist
set -qU XDG_CONFIG_HOME; or set -Ux XDG_CONFIG_HOME $HOME/.config
set -qU XDG_DATA_HOME; or set -Ux XDG_DATA_HOME $HOME/.local/share
set -qU XDG_CACHE_HOME; or set -Ux XDG_CACHE_HOME $HOME/.cache

# Favor globals for most things
set -gx HELIX_RUNTIME ~/helix/runtime
set -gx EDITOR hx
set -gx VISUAL code
