# TMUX

Tmux is terminal multiplexer, useful for session management.

## Installation (on Ubuntu 22.04)

Start with installing tmux (not via package manager, since the official repository contains an older version).
First, install all dependencies and tools for compiling the source.
```shell
sudo apt update
sudo apt install -y automake build-essential pkg-config libevent-dev libncurses5-dev bison
```
Next, clone the source code from official fit repo.
```shell
git clone https://github.com/tmux/tmux.git
cd tmux
git fetch --tags
# and checkout the newest version tag
git checkout <newest version tag>
```

Now we are ready to install tmux.
```shell
sh autogen.sh
./configure --prefix=/usr/local  # set installation dir to /usr/local/bin
make
sudo make install
```

## TMUX configuration

To configure tmux, first create .tmux folder in the home directory. 

```shell
mkdir ~/.tmux
touch ~/.tmux/tmux.conf
```

Set env variable pointing to a tmux configuration file. Add the following line to the end of your `~/.bashrc` file.

```shell
export TMUX_CONF=~/.tmux/tmux.conf
```

Next, install the tmux package manager.

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```




