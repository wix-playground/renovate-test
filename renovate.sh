#!/bin/bash

export PATH="/home/user/.yarn/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"
# export RENOVATE_CONFIG_FILE="/usr/src/app/templates/renovate-config.json"
export RENOVATE_CONFIG_FILE="./templates/renovate-config.json"
# export RENOVATE_TOKEN="80118f3add3e9fc1d884ee428113543b1152c126" # GitHub, GitLab, Azure DevOps
# export GITHUB_COM_TOKEN="**github-token**" # Delete this if using github.com

# Renovate
renovate
