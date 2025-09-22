# nevette-pink ZSH Theme making things as pink as possible.

# enable colors and prompt substitutions
autoload -U colors && colors
setopt PROMPT_SUBST

# dark pink username
username() {
   echo "%{$FG[005]%}%n%{$reset_color%}"
}

# medium pink entire directory structure with contraction
directory() {
   echo "%{$FG[013]%}%0~%{$reset_color%}"
}

# lighter pink git prompt info - stopped working because data was not accessible anymore
git_info() {
   #echo "%{$FG[176]%}$(git_prompt_info)%{$reset_color%}"
}

# extras like emojis
heart_emoji() {
   echo "💖"
}

aqua_check_emoji() {
   echo "%{$fg[cyan]%}\u2714%f%F{176}"
}

red_x_emoji() {
   echo "%{$FG[162]%}\u2718%f%F{176}"
}


ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" $(red_x_emoji)"
ZSH_THEME_GIT_PROMPT_CLEAN=" $(aqua_check_emoji)"
#ZSH_THEME_GIT_PROMPT_CLEAN=" \u1F496"

# let's try it out
PROMPT='$(username) $(directory) %{$FG[176]%}$(git_prompt_info)%{$reset_color%} $(heart_emoji) '
RPROMPT=''
