# nvim

No need for the introduction.

## Installation

First, clone the github repo.

```shell
git clone git@github.com:neovim/neovim.git
```

To build from source, first install all dependencies.
```shell
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
```

Navigate to the directory containing cloned neovim repo and execute the following commands
to compile it from the source.
```shell
make CMAKE_BUILD_TYPE=RelWithDebInfo
```

Now, it is time to create a deb package and install it.
```shell
cd build
sudo cpack -G DEB && sudo dpkg -i nvim-linux64.deb
nvim --version  # to check if the installation was successful
```

Remove the directory containing cloned repo, you do not need it anymore.

