alias reseed="rails db:drop && rails db:create && rails db:migrate && rails db:seed && rails db:test:prepare"
alias rails_test="rails test && rails test:system"
alias vardaman='cd ~/Code/faulkner/vardaman'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
rm -f ~/.zcompdump; compinit

eval "$(rbenv init -)"
