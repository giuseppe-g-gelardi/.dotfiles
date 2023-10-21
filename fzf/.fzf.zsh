# Setup fzf
# ---------
if [[ ! "$PATH" == */home/giuseppe/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/giuseppe/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/giuseppe/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/giuseppe/.fzf/shell/key-bindings.zsh"
