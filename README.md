#  New Environment Setup

1. Install [zsh](https://ohmyz.sh/), and the plugins listed in `.zshrc`
2. Install [iterm](https://iterm2.com/), and the profile exports in the `iterm/` folder
3. Move all dotfiles and `.vim` folder to `~/`

## Git Config
Create a `.localgitconfig` file with the new email address

## Homebrew packages

To backup:
```
brew leaves > my_brews.txt
```

To install:
```
xargs brew install < my_brew.txt
```