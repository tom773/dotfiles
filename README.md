# Dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Dependencies

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

### Starship

```
curl -sS https://starship.rs/install.sh | sh
```
### Fastfetch

```
brew install fastfetch [MacOS]
```
## Installation

``` 
git clone git@github.com/tom773/dotfiles.git 
cd ~/.dotfiles
```
then

``` 
stow --adopt .
```
