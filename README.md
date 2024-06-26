# terminal-modification

The bash terminal custom and self-developed commands to simplify daily use

## File Information

- .bashrc             to make terminal default display the current file path (location) and time, with user defined color, font and weight
- .bash_profile       the file that will be executed at the beginning of the terminal, import several terminal customization, alias and bash scripts, define paths
- .bashtp             the shell scripts for my grading task, to simplify the operation and the next step is to automate the process
- .bashalias          self-developed command alias to speed up when entering bash commands

## Customized Terminal 

Live time and current file path with different colors

<img width="724" alt="Screen Shot 2024-05-15 at 10 04 56 AM" src="https://github.com/James-Z-Zhang00/terminal-customization/assets/144994336/a26f5c32-8796-4eda-a28b-ecff351326cc">

## Load Associative Files

```bash
source ~/.profile
if [ -f ~/.bashalias ]; then
   source ~/.bashalias
fi

if [ -f ~/.bashtp ]; then
   source ~/.bashtp
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
```

## Command Line Font, Color and Information Setting

```bash
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
```
