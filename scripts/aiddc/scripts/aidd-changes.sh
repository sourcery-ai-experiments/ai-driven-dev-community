#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "pbcopy"

# NOTICE
# --------------------
notice "[aidd-changes]: Get current git changes"

# PARAMETERS
# --------------------
CHANGES=$(git diff)

# SCRIPT
# --------------------
echo "$CHANGES" | pbcopy
success "Changes copied to clipboard!"
