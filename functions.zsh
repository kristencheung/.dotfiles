### Functions 

# print last used branches
bstack() { git reflog | grep checkout | cut -d " " -f 8 | uniq | head -n ${1} | cat -n; }

# j -- Autojump
[[ -s /Users/kristencheung/.autojump/etc/profile.d/autojump.sh ]] && source /Users/kristencheung/.autojump/etc/profile.d/autojump.sh

function git_current_branch() {
  local ref
  ref=$(__git_prompt_git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}
