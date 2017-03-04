#!/bin/sh

locale-gen pt_BR.UTF-8

update-locale LANG=pt_BR.UTF-8 LC_CTYPE="pt_BR.UTF-8" LC_NUMERIC="pt_BR.UTF-8" LC_TIME="pt_BR.UTF-8" LC_COLLATE="pt_BR.UTF-8" LC_MONETARY="pt_BR.UTF-8" LC_MESSAGES="pt_BR.UTF-8" LC_PAPER="pt_BR.UTF-8" LC_NAME="pt_BR.UTF-8" LC_ADDRESS="pt_BR.UTF-8" LC_TELEPHONE="pt_BR.UTF-8" LC_MEASUREMENT="pt_BR.UTF-8" LC_IDENTIFICATION="pt_BR.UTF-8" LC_ALL=pt_BR.UTF-8

#Erlang and elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb 
dpkg -i erlang-solutions_1.0_all.deb
apt-get update -y
apt-get install -y esl-erlang
apt-get install -y elixir

# Phoenix
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force

# Nvm and Node JS
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source $HOME/.bashrc
nvm install 6.3.0

# PostgreSQL
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
apt-get update -y
apt-get install -y postgresql postgresql-contrib

# inotify-tools
apt-get install -y inotify-tools
