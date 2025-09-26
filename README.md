## My NEOVIM Config.
Trying to create my own config from scratch to learn more abot Nvim.

- Uses lazy.nvim
- Includes commonly used plugins (Telescope, Lsp, etc.)
- Includes some quality of life pluggins like autopairs
- Simple config

## Complete Instalation on Ubuntu
```
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
cd ~

nvm install --lts
nvm use --lts
nvm alias default lts/*

cd ~
curl -L https://github.com/neovim/neovim/releases/download/v0.11.4/nvim-linux-x86_64.tar.gz -o nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
echo alias nvim="~/nvim-linux64/bin/nvim" >> ~/.bashrc
source ~/.bashrc
mkdir ~/.config
cd ~/.config
git clone https://github.com/lucasvw89/nvim
cd ~
nvim
```
