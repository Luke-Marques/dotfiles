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

## Install Scripts

A list of program installation scripts can be found in `./bin`, such as scripts for
installing `rust` or `homebrew`.

## MacOS

On MacOS, ensure that `brew` is installed appropriately and the correct permissions
have been granted. Then navigate to `./macos` and run the `brew bundle` command to
install all brew packages/casks defined in `./macos/Brewfile`.

## To-Do

- [ ] New Zellij welcome screen is creating garbage sessions which are not being cleaned up.
- [x] Add [zellij-forgot](https://github.com/karimould/-forgot) Zellij plugin for keybindings popup.
- [x] Add [zk](https://github.com/zk-org/zk) plain-text note taking assistant.
- [ ] Add [skim](https://github.com/skim-rs/skim) as rust-based fzf.
- [ ] Add [fd](https://github.com/sharkdp/fd) as better `find`.
- [ ] Add [mpls](https://github.com/mhersson/mpls) for live markdown preview in helix/browser.
- [ ] Cleanup MacOS brewfile (ensure all required programs are present in brewfile).
- [ ] Update Helix.
  - [ ] Add keybinds to minus mode for sub-word navigation in Helix.
  - [ ] Configure in-line diagnostics in Helix.
