apt_package_list=(

  # Apache server
  apache2
  libapache2-mod-php5

  # MySQL
  mysql-server
  php5-mysql

  # PHP
  php5
  php5-cli
  php5-common
  php5-dev
  php5-mcrypt
  php5-imagick
  php5-imap
  php5-curl
  php5-gd

  # Other useful stuff
  imagemagick
  git-core
  zip
  unzip
  ngrep
  curl
  make
  vim
  colordiff

  # Node.js
  g++
  nodejs
  npm
)

# apt update
apt-get update --assume-yes

# Install packages
apt-get install --assume-yes ${apt_package_list[@]}

# Clean apt cache
apt-get clean

# Ensure npm is up to date
npm install -g npm
npm install -g npm-check-updates

# Install bower
npm install -g bower

# Install gulp and plugins
npm install -g gulp
npm install -g gulp-util
npm install -g gulp-sass
npm install -g gulp-autoprefixer
npm install -g gulp-coffee
npm install -g gulp-coffeelint
npm install -g gulp-concat
npm install -g gulp-plumber
npm install -g gulp-changed
npm install -g gulp-uglify
npm install -g gulp-livereload
npm install -g tiny-lr
npm install -g gulp-notify
