#! /usr/bin/env bash
#
# Created by RosaBlanca
#
# July 14, 2023

TYPE=$(gum choose ":sparkles: Added" ":zap: Optimized" ":fire: Removed" ":construction: WIP" ":art: Riced")
SCOPE=$(gum input --placeholder "scope")

SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")

# Commit these changes
gum confirm "Commit changes?" && git commit -m "$TYPE:$SCOPE"