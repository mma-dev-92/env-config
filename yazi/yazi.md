# yazi

Yazi is a cli file manager for linux. It is extremely fast (written in rust) and high configurable.

## Installation

First, install rustup (with the default options).

```shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo mv $HOME/.cargo/bin/* /usr/local/bin
```

Next, clone and compile source code.
```shell
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
sudo mv target/release/yazi /usr/local/bin
cd
sudo rm -rf yazi
```

## Theme configuration 

First, create configuration file for yazi

```shell
mkdir ~/.config/yazi
touch ~/.config/yazi/yazi.toml
touch ~/.config/yazi/theme.toml
```

Next, copy content of [this file][https://github.com/catppuccin/yazi/blob/main/themes/macchiato/catppuccin-macchiato-green.toml] to the `yazi.toml` file.

## Configuration file

At the end copy `yazi.toml` file from yazi direcdtory to `~/.config/yazi` dir.
