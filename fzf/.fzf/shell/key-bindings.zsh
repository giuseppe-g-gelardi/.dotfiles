#     ____      ____
#    / __/___  / __/
#   / /_/_  / / /_
#  / __/ / /_/ __/
# /_/   /___/_/ key-bindings.zsh
#
# - $FZF_TMUX_OPTS
# - $FZF_CTRL_T_COMMAND
# - $FZF_CTRL_T_OPTS
# - $FZF_CTRL_R_OPTS
# - $FZF_ALT_C_COMMAND
# - $FZF_ALT_C_OPTS

[[ -o interactive ]] || return 0


# Key bindings
# ------------

# Function to find and cd into a directory
__fzf_cd_into__() {
  local dir
  dir=$(find . \( -type d -o -name '.*' \) 2>/dev/null | fzf +m --preview "tree -L 1 {}")
  if [ -n "$dir" ]; then
    zle reset-prompt  # Clear the current input line
    zle accept-line   # Automatically accept the FZF selection
    cd "$dir"
  fi
}

# Bindings for Zsh
zle -N __fzf_cd_into__
bindkey '^T' __fzf_cd_into__

