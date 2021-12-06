# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
(cat ~/.cache/wal/sequences &)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---Aliases--- #
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ~="cd ~"
alias /="cd /"
alias ..="cd .."
alias fm="ranger"

mcd () {
	mkdir -p -- "$1" && cd -P -- "$1"
}
alias sr="source ~/.zshrc"
alias cat="bat"
