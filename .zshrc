# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# [PLUGINS]
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Colorize colors "ccat" ouput. pygmentize python package has to be installed! 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting macos colorize vi-mode)
#
# Enable vi mode
bindkey -v
# configure vi-mode plugin
MODE_INDICATOR="%F{white}+%f"
INSERT_MODE_INDICATOR="%F{yellow}+%f"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi


# [ALIASES]
SCRIPT_PATH="/Users/sejersen/dev/shell_scripts"
# For a full list of active aliases, run `alias`.
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zshrc="yadm enter nvim ~/.zshrc"
alias skhdrc="yadm enter nvim ~/.config/skhd/skhdrc"
alias yabairc="yadm enter nvim ~/.config/yabai/yabairc"
alias tmuxconfig="yadm enter nvim ~/.tmux.conf"
alias sbrc="yadm enter nvim ~/.config/sketchybar/sketchybarrc"
alias nvimconfig="cd ~/.config/nvim && yadm enter nvim init.lua" 
alias starshipconfig="yadm enter nvim ~/.config/starship.toml"
alias bootstrap="yadm enter nvim ~/.config/yadm/bootstrap.sh"
alias configreadme="yadm enter nvim ~/README.md"
alias wiki="nvim ~/vimwiki/index.md"
alias ls="ls -1"
alias ys="yadm status"
alias c="clear"
alias cat="ccat"
alias a="~/dev/scripts/airpods.sh"
alias s="~/dev/scripts/speakers.sh"
alias gs="git status"
alias ..="cd .."
alias add="$SCRIPT_PATH/spotify/get_now_playing.sh && $SCRIPT_PATH/spotify/add_now_playing_to_playlist.sh"

# Using starship promt
eval "$(starship init zsh)"

# For zoxide improved cd command
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
