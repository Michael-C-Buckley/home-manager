# -----------------------------
# Aliases
# -----------------------------

# Common aliases
alias ll='ls -alF'       # Detailed list with classification
alias la='ls -A'         # List all except `.` and `..`
alias l='ls -CF'         # Simple classified list
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases
alias gst='git status'
alias gco='git checkout'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

# Kubernetes
alias k='kubectl'

# Nu/Nushell
alias n='nu -c'

# ZFS
alias zls='zfs list -o name,used,compressratio,lused,avail'
alias zsls='zfs list -t snapshot -S creation -o name,creation,used,written,refer'