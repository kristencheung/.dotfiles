### Functions 

# print last used branches
bstack() { git reflog | grep checkout | cut -d " " -f 8 | uniq | head -n ${1} | cat -n; }

# j -- Autojump
[[ -s /Users/kristencheung/.autojump/etc/profile.d/autojump.sh ]] && source /Users/kristencheung/.autojump/etc/profile.d/autojump.sh
