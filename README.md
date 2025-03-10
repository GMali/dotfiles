# README

**Table of Contents**
- [README](#readme)
  - [How to setup a new machine](#how-to-setup-a-new-machine)
    - [Download and setup iTerm2](#download-and-setup-iterm2)
    - [Zsh](#zsh)
    - [Vim](#vim)
    - [Gitconfig](#gitconfig)
    - [Copy all other .files](#copy-all-other-files)
    - [Homebrew](#homebrew)
  - [How to backup changes to this repo](#how-to-backup-changes-to-this-repo)

## How to setup a new machine

### Download and setup iTerm2

1. You can find install instructions on [iterm website](https://iterm2.com/).
2. Install the fonts found in the `iterm/fonts/` folder.
3. Set up dynamic profiling and copy the profiles from the `iterm/` folder.
4. If that doesn't automatically set up the colors, import them manually from the `iterm/` folder.


### Zsh

1. You can find install instructions on [zsh website](https://ohmyz.sh/)
2. Look at the plugins listed in `.zshrc` and install them manually.

```
cp .p10k.zsh ~/
```

### Vim

```
cp .vimrc ~/
cp -R .vim/ ~/
```

### Gitconfig

```
cp .gitconfig ~/
```

Create a `.localgitconfig` file with the new email address

### Copy all other .files

```
cp .aliases .exports .functions ~/
```

### Homebrew

```
xargs brew install < my_brew.txt
```

## How to backup changes to this repo

```
./backup.sh
````
Then commit and push changes