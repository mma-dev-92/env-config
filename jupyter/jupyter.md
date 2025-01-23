# Jupyter and jupyter extensions

This part of configuration describes the setup of jupyter notebook and its extensions like vim key bindings,
autocompletion and so on. 

## Jupyter instalation

First, create apropriate virtual envirnoment and activate it (or use virtual envirnoment that already exist). Next,
install jupyter and jupyter extensions

```shell
pip3 install --upgrade pip
pip install jupyter lab
```

To run jupyter lab from the cli, simply run:

```shell
jupyter lab
```

## Vim keybindings

To install vim key bindings in jupyter lab simply run those two commands (before that activate your virtual environment, where jupyterlab is installed)

```shell
pip install jupyterlab-vim
jupyter labextension enable jupyterlab-vim

```

## Better autocompletion

Install lsp-python for jupyter lab (before that activate your virtual environment, where jupyter lab is installed)

```shell
pip install jupyterlab-lsp python-lsp-server
```

After installation, open jupyter lab and navigate to Settings Settings Editor. Under the Code Completion section, enable continuousHinting to allow for automatic suggestion pop-ups as you type.

## Catppucin theme

To install catppucin theme for jupyter lab (it is important not to get blind, right?) just execute

```
pip install catppuccin-jupyterlab
```

After installation, you may need to enable the theme in JupyterLab. Open JupyterLab and navigate to Settings > Theme. You should see your installed theme listed there. Select it to apply.

