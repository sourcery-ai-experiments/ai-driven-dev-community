#!/bin/sh

. "$(dirname "$0")/_.sh"

# NOTICE
# --------------------
notice "[aidd-changes-from-main]: Get changes from main branch"

# PARAMETERS
# --------------------
CHANGES=$(git diff main)

# SCRIPT
# --------------------
echo "$CHANGES" | pbcopy
success "Changes copied to clipboard!"
