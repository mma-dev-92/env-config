# lazygit

## Instalation

To install lazygit, simply exetute those commands

```{shell}
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
lazygit --version
rm -rf lazygit.tar.gz
```

## Color Theme

To set theme to catpuccin, first clone git repo

```{shell}
git clone https://github.com/catppuccin/lazygit.git ~/.config/catppuccin-lazygit
```

Pick the theme you want, for example:
```{shell}
~/.config/catppuccin-lazygit/themes/macchiato/blue.yml
```

Set alias in `~/.bashrc` file
```{shell}
alias lazygit='lazygit --use-config-file="$XDG_CONFIG_HOME/lazygit/config.yml,$XDG_CONFIG_HOME/catppuccin-lazygit/themes/macchiato/blue.yml"'
```


