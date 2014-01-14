# ~/.bash_aliases


# Make aliases work with `sudo`.
# From the alias section in the bash(1) manpage:
#     A trailing space in VALUE causes the next word to be checked for alias
#     substitution when the alias is expanded.
alias sudo='sudo '


# Shortcuts.
# ----------------------------------------------------------------------------

alias a='alias'
alias cls='clear'
alias h='history'
alias j='jobs'

# Options for `ls`:
#     -F: use special characters immediately after the name to distinguish
#         between file types
#     -G: colorize output
#     -H: follow symbolic links on the command line
alias ls='ls -FGH'

# List all files, including dot files, in long format.
alias la='ls -al'

# List all files in long format.
alias ll='ls -l'

# List all files in long format sorted by time modified and reversed sort
# order (most recently modified last).
alias ltr='ls -ltr'

# Simple password generator.
alias pwgen='LC_ALL=C tr -dc "[[:alnum:]][[:punct:]]" < /dev/urandom | fold -w 12 | head -n 10'

# Make `tree` print hidden files and print non-printable characters as is.
alias tree='tree -aN'

# Display week number.
alias week='date +%V'

# MongoDB.
alias mongo.start='ulimit -Sn 1024; mongod --config /usr/local/etc/mongod.conf'
alias mongo.stop='kill $(cat /usr/local/var/run/mongod.pid) && rm /usr/local/var/run/mongod.pid'

# PostgreSQL.
alias pg.start='pg_ctl start -D /usr/local/var/db/postgres -l /usr/local/var/log/postgres/postgres.log'
alias pg.stop='pg_ctl stop -D /usr/local/var/db/postgres'
alias pg.status='pg_ctl status -D /usr/local/var/db/postgres'


# Network.
# ----------------------------------------------------------------------------

# IP addresses.
alias ip='dig @resolver1.opendns.com myip.opendns.com +short'
alias localip='ipconfig getifaddr en0'

# mitmproxy, an SSL-capable man-in-the-middle HTTP proxy.
alias mitmproxy='source ~/local/mitmproxy/bin/activate; mitmproxy --palette solarized_light; deactivate'


# OS X specific commands.
# ----------------------------------------------------------------------------

# Airport command line utility.
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Reset the "Open With" menu by rebuilding the LaunchServices database.
# This will remove duplicate entries from the "Open With" menu.
alias lsreset='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# PlistBuddy.
alias plistbuddy='/usr/libexec/PlistBuddy'
