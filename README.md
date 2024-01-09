# My Dotfiles
I'm using yadm to manage my dotfiles. Yadm is a wrapper for a bare git repo, introducing some extra features.

## Installing on a new system
Step 1: install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Step 2: Install yadm
```bash
brew install yadm
```
Step 3: Clone this repo:
```bash
yadm clone "https://github.com/CSejersen/Dotfiles"
```
Will promt:
```
Found .config/yadm/bootstrap
It appears that a bootstrap program exists.
Would you like to execute it now? (y/n)
```
Step 4: You can manually run bootstrap program, if you chose 'NO' in previous step.
```bash
yadm bootstrap

