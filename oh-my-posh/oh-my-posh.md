# Oh-my-posh

It is nice to set up oh-my-posh. To do it, just follow those instructions. First, install it.

```shell
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
```

Next, download themes.

```shell
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
```

Copy `my-theme.omp.json` to `poshthemes` directory

```shell
mkdir ~/.config/poshthemes/
cp oh-my-posh/my-theme.omp.json ~/.config/poshthemes/
```

and add the following line to `~/.bashrc` file.

```shell
oh-my-posh --init --shell bash --config ~/.config/poshthemes/my-theme.omp.json
```
