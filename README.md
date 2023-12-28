#Installing dotfiles onto a new system:

Prior to the installation make sure to commit the alias to your .bashrc or .zsh:

  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  
And that the source repository ignores the destination folder, to avoid weird recursion problems:

  echo ".cfg" >> .gitignore

Now clone dotfiles into a bare repository in a "dot" folder of $HOME:

  git clone --bare https://github.com/CSejersen/Dotfiles.git $HOME/.cfg

Define the alias in the current shell scope:

  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

Checkout the actual content from the bare repository to $HOME folder:

  config checkout

The step above might fail with a message like:

  error: The following untracked working tree files wuold be overwritten by checkout:
    .bashrc
    .gitignore
  Please move or remove them before you can switch branches.
  Aborting


This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:
