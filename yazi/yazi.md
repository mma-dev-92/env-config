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

## Configuration
