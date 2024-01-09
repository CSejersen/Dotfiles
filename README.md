# Welcome to my $HOME
I'm using yadm to manage my dotfiles. Yadm is a wrapper for a bare git repo, that introduces some usefull extra features.

## Installing on a new system
Step 1: install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Step 2: Install yadm
```bash
brew install yadm
```
Step 3: Clone the dotfiles repo:
```bash
yadm clone "https://github.com/CSejersen/Dotfiles"
```
After cloning yadm will promt:
```
Found .config/yadm/bootstrap
It appears that a bootstrap program exists.
Would you like to execute it now? (y/n)
```
If you chose "no" in step 3, you can manually run the bootstrap program with:
```bash
yadm bootstrap

