#     ____      ____
#    / __/___  / __/
#   / /_/_  / / /_
#  / __/ / /_/ __/
# /_/   /___/_/ key-bindings.bash
#
[[ $- =~ i ]] || return 0

# Key bindings
# ------------
# - this function will find and cd into a directory
__fzf_cd_into__() {
  local dir
  dir=$(find . \( -type d -o -name '.*' \) 2>/dev/null | fzf +m --preview "tree -L 1 {}")
  if [ -n "$dir" ]; then
    cd "$dir" && printf 'cd --> %q' "$dir"
    # cd "$dir"
    # PS1="\u@\h:$PWD\$ "  # Update the prompt to show the current directory
    # printf 'cd --> %q' "$dir"
  fi
}

# CTRL-F - cd into the selected directory
bind -x '"\C-g": __fzf_cd_into__'

