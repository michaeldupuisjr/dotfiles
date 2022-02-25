# set color for terminal prompt 
# https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Aliases
alias dotfiles="cd ~/Code/dotfiles"
alias reseed="rails db:drop && rails db:create && rails db:migrate && rails db:seed && rails db:test:prepare"
alias rails_test="rails test && rails test:system"

# Local zsh aliases
if [ -f ~/Code/dotfiles/.zshrc-local ]; then
  source ~/Code/dotfiles/.zshrc-local
 else
  print "No zshrc-local found in ~/Code/dotfiles."
fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
rm -f ~/.zcompdump; compinit

eval "$(rbenv init -)"
