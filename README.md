# Example of use:

```bash
  config status
  config add .vimrc
  config commit -m "Add vimrc"
  config push
```

# Install on new system

to install on new system simply run the config_install.sh script or do the following:

Prior to the installation commit the alias to .bashrc or .zsh:

```bash
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

And ensure that the source repository ignores the destination folder, to avoid weird recursion problems:

```bash
  echo ".cfg" >> .gitignore
```

Now clone dotfiles into a bare repository in a "dot" folder of $HOME:

```bash
  git clone --bare https://github.com/CSejersen/Dotfiles.git $HOME/.cfg
```

Define the alias in the current shell scope:

```bash
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Checkout the actual content from the bare repository to $HOME folder:
```bash
  config checkout
```

The step above might fail with a message like:

```bash
  error: The following untracked working tree files wuold be overwritten by checkout:
    .bashrc
    .gitignore
  Please move or remove them before you can switch branches.
  Aborting
```

This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:

```bash
  mkdir -p .config-backup && \
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .config-backup/{}
```

Re-run the check out if you had problems:

```bash
  config checkout
```

Set the flag showUntrackedFiles to no on this specific (local) repository:

```bash
  config config --local status.showUntrackedFiles no
```

You're done, from now on you can now type config commands to add and update your dotfiles! :)

