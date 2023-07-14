#! /usr/bin/env bash
#
# Created by RosaBlanca
#
# July 14, 2023
TYPE=$(gum choose ":rocket: Initial Commit" ":sparkles: Added" ":fire: Removed" ":zap: Optimized" ":art: Riced" ":construction: WIP")
SCOPE=$(gum input --placeholder "Scope")

SUMMARY=$(gum input --value "$TYPE: $SCOPE - " --placeholder "Summary of this change")

# Commit these changes
gum confirm "Commit changes?" && git commit -m "$TYPE: $SCOPE"