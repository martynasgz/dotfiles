[ -f ~/.config/zsh/os.zsh ] && source ~/.config/zsh/os.zsh

alias p="pnpm"
alias b="brew"
alias macapp="/Users/martynas/Desktop/projects/macos-template/new-macos-app.sh"
alias reload-rift="rift-cli execute config reload"

# pnpm
export PNPM_HOME="/Users/martynas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
