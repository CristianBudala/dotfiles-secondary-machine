# ~/.bashrc

# Antigravity CLI Paths
export PATH="/home/cristian/.local/bin:$PATH"

# Starship Prompt
eval "$(starship init bash)"

# YOLO Mode Alias for Antigravity CLI
alias yolo="agy --dangerously-skip-permissions"
alias agy-yolo="agy --dangerously-skip-permissions"

# Dotfiles Bare Git Management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
