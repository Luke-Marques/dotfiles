# Luke's Dotfiles

This repo is a collection of configuration files for MacOS and Linux, with installation
and setup scripts included.

[Dotbot](https://github.com/anishathalye/dotbot/tree/b8891c5fb72485316fba54d2c1310320c9ebf4d5f)
is used as a dotfile manager.

## Usage 

To setup symlinks for the dotfiles present at `./dots`, simply run the bash script 
`./install`. This script is idompotent, so can be run as many times as you like.
The install script:

1. Cleans (removes) all dead symlinks from the system (recursively from `$HOME`).
2. Installs symlinks as defined in `./install.conf.yaml`.
3. Updates submodules.
