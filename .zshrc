
source ~/dotfiles/git-prompt.sh

autoload -Uz colors && colors

git_prompt_info() {
    __git_ps1 ' 🌿 %s'
}



# export PS1="🚀 %{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~%{$fg[magenta]%}\$(git ps1 ' 🌿 %s')%{$reset_color%} 🔥 \$ "

# export PS1="🚀 %{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~%{$fg[magenta]%}\$(git_prompt_info)%{$reset_color%} 🔥 \$ "

export PS1="🚀 %{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~ %{${fg[magenta]}%}\$(git_prompt_info)%{${reset_color}%} 🔥 \$ "



export PATH="/Users/kevmo/Library/Python/3.9/bin:$PATH"

preexec() { timer=${timer:-$SECONDS} }
precmd() {  if [ $timer ]; then echo "Last command took $(($SECONDS - $timer)) seconds to execute."; fi; timer=$SECONDS }
