# dotfiles

## Setup steps 

> These steps supposed that all dependencies have been installed properly (TODO: add installation script)

1. Clone repo in a dedicated repo: `git clone --depth 1 git@github.com:samy-dougui/dotfiles.git $HOME/.dotfiles`
2. Setup symlinks
  1. `ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc` (for work laptop, create a different symlink that is sourced by the .zshrc)
  2. `ln -s $HOME/.dotfiles/.zshrc_aliases $HOME/.zshrc_aliases`
  3. `ln -s $HOME/.dotfiles/.config/starship $HOME/.config/starship`
  4. `ln -s $HOME/.dotfiles/.config/ghostty $HOME/.config/ghostty`
  5. `ln -s $HOME/.dotfiles/.config/nvim $HOME/.config/nvim`

## Tools used

- brew
- [iterm2](https://iterm2.com/)
- zsh
- [antigen](https://github.com/zsh-users/antigen)
  - It's a plugin manager for zsh
- [ghq](https://github.com/x-motemen/ghq) 
  - `brew install gqh`
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts)
  - I used `fira-code`


  ## Next step

  - [ ] Script to install all dependencies needed for the configuration defined here
