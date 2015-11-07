#!/usr/bin/env bash

# Author: Gaurav Mali

################################################################################
# OVERRIDDEN CONSTANTS
################################################################################

GIT_THEME_PROMPT_DIRTY="${red}[GIT] "
GIT_THEME_PROMPT_CLEAN="${green}[GIT] "
GIT_THEME_PROMPT_PREFIX="${purple}"


################################################################################
# NEW CHARS / EMOJIS
################################################################################

TYPE_PROMPT_CHAR="👉"
OK_CHAR="👌"
STOP_CHAR="✋"
CLOUD_CHAR="☁️"
HEART_CHAR="❤️"


################################################################################
# HELPER METHODS
################################################################################

function get_branch_name {
    SCM_BRANCH=$(git rev-parse --abbrev-ref HEAD)
}

# Overriden
function git_prompt_info {
  git_prompt_vars
  get_branch_name
  echo -e "$SCM_STATE$SCM_PREFIX$SCM_BRANCH"
}

################################################################################
# Final output (a.k.a what you see in the shell)
################################################################################

function prompt_command() {
    PS1="\n$(scm_prompt_info) ${reset_color}in ${cyan}\w${reset_color}\n $TYPE_PROMPT_CHAR  "
}

PROMPT_COMMAND=prompt_command;
