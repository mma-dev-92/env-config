# kitty

Kitty is a terminal emulator. It is fast and highly customizable.

First create directiries for configuration file and color themes.
```shell
mkdir ~/.config/kitty
touch ~/.config/kitty/kitty.conf
mkdir ~/.config/kitty/kitty-themes/
```

Download color themes from kitty-themes repo.
```shell
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
```

Create a symbolic link to theme (I like Chalk theme).
```shell
ln -s kitty-themes/themes/Chalk.conf theme.conf 
```

Install Hack font from [here](https://sourcefoundry.org/hack/).

Copy the content of the kitty.conf file from here to the file in your system.