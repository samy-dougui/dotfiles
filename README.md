# dotfiles

## Setup steps

> These steps make the assumption that all dependencies have been installed properly (TODO: add installation script)

1. Clone repo in a dedicated repo: `git clone --depth 1 git@github.com:samy-dougui/dotfiles.git $HOME/.dotfiles`
2. Setup symlinks
   - `ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc` (for work laptop, create a different symlink that is sourced by the .zshrc)
   - `ln -s $HOME/.dotfiles/.zshrc_aliases $HOME/.zshrc_aliases`
   - `ln -s $HOME/.dotfiles/.config/starship $HOME/.config/starship`
   - `ln -s $HOME/.dotfiles/.config/ghostty $HOME/.config/ghostty`
   - `ln -s $HOME/.dotfiles/.config/nvim $HOME/.config/nvim`
   - `ln -s $HOME/.dotfiles/.config/aerospace $HOME/.config/aerospace`
   - `ln -s $HOME/.dotfiles/.config/tmux $HOME/.config/tmux`

## Tools used

- brew
- zsh
- [ghq](https://github.com/x-motemen/ghq)
  - `brew install gqh`
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts)

## Next step

- [ ] Script to install all dependencies needed for the configuration defined here
