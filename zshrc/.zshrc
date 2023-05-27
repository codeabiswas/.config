# ---------------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# ---------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---------------------------------------------------------
# Theme
# ---------------------------------------------------------
# Powerlevel10k theme
source ~/.config/zshrc/themes/powerlevel10k/powerlevel10k.zsh-theme

# ---------------------------------------------------------
# Plugins
# ---------------------------------------------------------
# Improved vim mode in zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Fzf - fuzzy finder

# ---------------------------------------------------------
# Set aliases
# ---------------------------------------------------------
# Set vim and vi alias to nvim
alias vim="nvim"
alias vi="nvim"

# Better ls = exa
# ls but vertical
alias ls="exa -l --no-permissions --no-filesize --no-user --no-time"
# ls -la but vertical
alias lsa="exa -la --no-permissions --no-filesize --no-user --no-time"
# Recursively show all files in a diectory
alias lst="exa -T" 
# Show the Git information of all files in dir
alias lstg="exa -l -T --git --no-permissions --no-filesize --no-user --no-time"

# Better htop = btm
alias htop="btm"
# Simplified btm which looks very similar to htop
alias htopb="btm -b"

# Simpler alias for neofetch
alias nf="neofetch"

# Go to last directory
alias cdl="cd -"

# ---------------------------------------------------------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ---------------------------------------------------------


# ---------------------------------------------------------
# Fzf - fuzzy finder
# ---------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ---------------------------------------------------------
# spicetify-cli cmd line access
# ---------------------------------------------------------
export PATH=$PATH:/Users/dragonfruit/.spicetify

# ---------------------------------------------------------
# Zsh syntax highlighting (Always the last line)
# ---------------------------------------------------------
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

