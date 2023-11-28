#     ____      ____
#    / __/___  / __/
#   / /_/_  / / /_
#  / __/ / /_/ __/
# /_/   /___/_/ key-bindings.bash
#
[[ $- =~ i ]] || return 0

# Key bindings
# ------------
# - this function will find and cd into a directory and open neovim
# - both commands are executed in a subshell and returns to the 
# - original directory when neovim is closed
# __fzf_cd_and_open_nvim__() {
#   local dir
#   dir=$(find . \( -type d -o -name '.*' \) 2>/dev/null | fzf +m --preview "tree -L 1 {}")
#   if [ -n "$dir" ]; then
#     (cd "$dir" && nvim .)
#   fi
# }
#
# __fzf_cd_and_open_code__() {
#   local dir
#   dir=$(find . \( -type d -o -name '.*' \) 2>/dev/null | fzf +m --preview "tree -L 1 {}")
#   if [ -n "$dir" ]; then
#     (cd "$dir" && code .)
#   fi
# }
#
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

# # Required to refresh the prompt after fzf
# bind -m emacs-standard '"\er": redraw-current-line'

# # CTRL-G - cd into the selected directory and open neovim
# bind -x '"\C-g": __fzf_cd_and_open_nvim__'
#
# # CTRL-E - cd into the selected directory and open vscode
# bind -x '"\C-e": __fzf_cd_and_open_code__'

# CTRL-F - cd into the selected directory
bind -x '"\C-f": __fzf_cd_into__'

