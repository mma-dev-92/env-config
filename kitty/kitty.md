# kitty

Kitty is a terminal emulator. It is fast and highly customizable.

First install kitty (the latest release). 

```shell
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# mv it to /usr/local
sudo mv ~/.local/kitty.app /usr/local/
# and create symlinks
sudo ln -s /usr/local/kitty.app/bin/kitty /usr/local/bin/kitty
sudo ln -s /usr/local/kitty.app/bin/kitten /usr/local/bin/kitten
# register kitty as a terminal emulator
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/kitty 50
# and set it as the default one
sudo update-alternatives --config x-terminal-emulator
```

Then create directories for configuration files and color themes.
```shell
mkdir ~/.config/kitty
cp ./kitty/kitty.conf ~/.config/kitty/
```

Install Hack Nerd Font from [here](https://www.nerdfonts.com/font-downloads). 

Last but not least, set color-theme for kitty (I love Catppuccin-Macchiato).

```shell
kitten theme
```

