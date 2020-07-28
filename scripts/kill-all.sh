if [[ $(command -v brew) == "" ]]; then
  printf "\e[1;33m🍺  Installing Hombrew\e[0m"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ $(command -v watchman) == "" ]]; then
  printf "\e[1;33m👀  Installing Watchman\e[0m"
  brew install watchman
fi

printf "\e[1;37m[1/4] 🧼  Clean Watchman cache\e[0m"
watchman watch-del-all

printf "\e[1;37m[2/4] 🗑  Remove node_modules\e[0m"
rm -rf node_modules

printf "\e[1;37m[3/4] 📦  Install dependencies again\e[0m"
yarn install

printf "\e[1;37m[4/4] 🚀  Start without cache\e[0m"
yarn start --reset-cache
