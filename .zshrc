export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)

function emulator { ( cd "$(dirname "$(whence -p emulator)")" && ./emulator "$@"; ) }
source $ZSH/oh-my-zsh.sh

