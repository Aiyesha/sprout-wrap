#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${bold_red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function get_git_name {
  echo $(git $1 | sed -n "s/duet\.env\.git-$2-name \(.*\)/\1/p" | head -1)
}

function get_git_initials {
  #echo $(grep ": $1;" ~/.git-authors | awk '{ print $1; }')
  echo $(grep ": $1;" ~/.git-authors | awk '{ print $1; }' | sed 's/://')
}

function scm_author_info {
  if [ -e .git ]; then
    if [ -z "$(rbenv version | grep system)" ]; then
      git_author_name=$(get_git_name duet author)
      git_author_initials=$(get_git_initials "$git_author_name")
      git_committer_name=$(get_git_name duet committer)
  
      #echo "Author: $git_author_name"
      #echo "Committer: $git_committer_name"

      if [ -z "$git_committer_name" ]; then
        echo "$git_author_initials"
      else
        git_committer_initials=$(get_git_initials "$git_committer_name")
        echo "$git_author_initials+$git_committer_initials"
      fi
    fi
  fi
}

function prompt_command() {
    PS1="\n${orange}$(virtualenv_prompt)${yellow}$(ruby_version_prompt) ${purple}\h ${reset_color}in ${green}\w\n${bold_cyan}$(scm_char) ${green}$(scm_author_info)$(scm_prompt_info) ${green}\$${reset_color} "
}

PROMPT_COMMAND=prompt_command;

