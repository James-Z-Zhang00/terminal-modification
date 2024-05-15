echo "$(tput setaf 9)USING .bashrc$(tput sgr0)"
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]";
PS1+="\[${yellow}\]\t";
PS1+="\[${white}\] at ";
PS1+="\[${green}\]\w";
PS1+="\[${white}\] \[${white}\]: \[${reset}\]";

export PS1;[ -f "/Users/virginia/.ghcup/env" ] && source "/Users/virginia/.ghcup/env" # ghcup-env
. "$HOME/.cargo/env"
