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
