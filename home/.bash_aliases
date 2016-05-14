# ~/.bash_aliases

# Make aliases work with `sudo`
# From the alias section in the bash(1) manpage:
#   A trailing space in VALUE causes the next word to be checked for alias
#   substitution when the alias is expanded.
alias sudo='sudo '

# Shortcuts
# ----------------------------------------------------------------------------

# Options for `ls`
#   -F: use special characters immediately after the name to distinguish
#       between file types
#   -G: colorize output
#   -H: follow symbolic links on the command line
alias ls='ls -FGH'

# Network
# ----------------------------------------------------------------------------

# IP addresses
alias ip='dig @resolver1.opendns.com myip.opendns.com +short'
