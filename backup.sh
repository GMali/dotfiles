#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------------
# This script copies your configuration files and directories to the
# current working directory, and exports your brew leaves (installed
# formulae) while filtering out unwanted ones (as listed in the
# "blacklist_formulae" file).
# ------------------------------------------------------------------

printColorful() {
    printf "\033[38;2;%sm%s\033[0m" "26;188;156" "$1..."
}

printDone() {
    printf "✅\n"
}

copyFiles() {
    for file in "${files_to_copy[@]}"; do
        if [[ -f "$file" ]]; then
            cp "$file" .
        else
            printColorful "Warning: $file does not exist."
        fi
    done
}

copyDirectories() {
    for dir in "${directories_to_copy[@]}"; do
        if [[ -d "$dir" ]]; then
            cp -R "$dir" .
        else
            printColorful "Warning: $dir does not exist."
        fi
    done
}

copyProfiles() {
    target_dir="iterm"
    mkdir -p "$target_dir"
    iterm_file="$HOME/Library/Application Support/iTerm2/DynamicProfiles/property_list.json"
    if [[ -f "$iterm_file" ]]; then
        cp "$iterm_file" "$target_dir/"
    else
        printColorful "Warning: $iterm_file does not exist."
    fi
}

exportBrew() {
    brew_leaves=$(brew leaves)
    blacklist="blacklist_formulae.txt"
    if [[ -f "$blacklist" ]]; then
        printColorful "Filtering out blacklisted formulae from $blacklist"
        echo "$brew_leaves" | grep -v -F -f "$blacklist" >brew.txt
    else
        printColorful "No blacklist file found. Using all brew leaves."
        echo "$brew_leaves" >brew.txt
    fi
}

# 1. Files to copy from your home directory:
files_to_copy=(
    "$HOME/.p10k.zsh"
    "$HOME/.aliases"
    "$HOME/.exports"
    "$HOME/.functions"
    "$HOME/.gitconfig"
    "$HOME/.vimrc"
    "$HOME/.zshrc"
)

printColorful "Copying .files"
copyFiles
printDone

# 2. Directories to copy:
directories_to_copy=(
    "$HOME/.vim"
)

printColorful "Copying .directories"
copyDirectories
printDone

# 3. Copy iTerm2 dynamic profiles file into an "iterm" directory.
# Create the target directory if it doesn't exist.
printColorful "Copying iTerm2 profiles"
copyProfiles
printDone

# 4. Export currently installed brew formulae and filter out blacklisted ones.
printColorful "Exporting brew leaves"
exportBrew
printDone

echo -e "\033[1;32m$(cowsay 'Backup complete ^_^')\033[0m"
