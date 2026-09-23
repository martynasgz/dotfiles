# Tell brew bundle where the Brewfile lives, so --file is never needed
export HOMEBREW_BUNDLE_FILE="$HOME/.dotfiles/Brewfile"

# Regenerate the Brewfile whenever the installed package list changes
brew() {
  command brew "$@"
  local rc=$?

  if [[ $rc -eq 0 ]]; then
    case "$1" in
      install|uninstall|remove|rm|reinstall|tap|untap|autoremove)
        command brew bundle dump --force
        ;;
    esac
  fi

  return $rc
}