#!/usr/bin/env bash
#
# ~/.bash_functions


# Recursively delete files that match a certain pattern from the current
# directory (by default all .DS_Store files are deleted)
deletefiles() {
    local q="${1:-*.DS_Store}"

    find . -type f -name "$q" -ls -delete
} 

# Remove downloaded file(s) from the OS X quarantine
unquarantine() {
    local attribute

    for attribute in com.apple.metadata:kMDItemDownloadedDate com.apple.metadata:kMDItemWhereFroms com.apple.quarantine; do
        xattr -rd "$attribute" "$@"
    done
}

