## My NEOVIM Config.
Trying to create my own config from scratch to learn more abot Nvim.

- Uses lazy.nvim
- Includes commonly used plugins (Telescope, Lsp, etc.)
- Includes some quality of life pluggins like autopairs
- Simple config

## Complete Instalation on Ubuntu
```
cd ~
curl -L https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz -o nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
echo alias nvim="~/nvim-linux64/bin/nvim" >> ~/.bashrc
source ~/.bashrc
mkdir ~/.config
cd ~/.config
git clone https://github.com/lucasvw89/nvim
cd ~
nvim
```
