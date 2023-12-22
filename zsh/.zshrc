# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="/home/giuseppe/.fzf/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life" # robbyrussell #half-life

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.profile

# export PATH="/usr/bin:$PATH"
source ~/.zsh_profile
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

export PNPM_HOME="/home/giuseppe/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source /home/giuseppe/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
