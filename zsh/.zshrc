### PATH ###
export PATH="$HOME/.cargo/bin:$HOME/.config/bin:$HOME/.local/bin:$PATH:$PATH"

### SHELL VARS ###
export EDITOR="nvim"
export SUDO_EDITOR="/usr/local/bin/nvim"
export BROWSER="zen-browser"

### SHELL INTEGRATIONS ###
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
### END OF INTEGRATIONS ###

### ------------- OPTIONS --------------- ###
HISTSIZE=5000
HISTFILE=~/.config/.zsh_hist
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt auto_cd
setopt correct
setopt interactive_comments

# COMPLETION
autoload -U compinit; compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C   # skip security check
fi
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors '${(s.:.)EZA_COLORS}'
zstyle ':completion:*' menu no

### ------------- END OF OPTIONS --------------- ###

### ------------- PLUGINS/ZINIT  --------------- ###
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node

# Deferred loading (shell loads first, plugins after)
zinit wait lucid for \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-history-substring-search \
    MichaelAquilina/zsh-you-should-use \
    Aloxaf/fzf-tab

# Setup previews with fzf
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

zstyle ':fzf-tab:complete:*' fzf-preview 'ls $realpath'
#### -------------- END OF PLUG-INS ---------###

### ---------- ALIASES ----------- ###
alias ..="cd ../"
alias ...="cd ../; cd ../;"
alias ....="cd ../; cd ../; cd ../;"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user"
alias szshrc="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"
alias q="exit"
alias zypin="sudo zypper in"
alias zypse="zypper se"
alias sysUpt="sudo zypper dup"
alias weovim_config="nvim ~/.config/nvim/"
alias rf="ranger"
alias fastfetch="fastfetch --logo opensuse"

# nvim
alias vim="nvim"
alias vi="nvim"
### ---------- END OF ALIASES ----------- ###

### ---------- KEYBINDS ----------- ###
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
setopt auto_cd

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

eval "$(starship init zsh)"
eval "fastfetch --logo opensuse"
