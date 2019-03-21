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


  alias ni="npm install"
  alias nb="npm run build"
  alias ns="npm run start"
  alias vimrc="vim ~/.vimrc"
  alias zshrc="vim ~/.zshrc"
  alias i3conf="vim /etc/i3/config"
  alias si="sudo apt-get install"
