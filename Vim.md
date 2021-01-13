# 1. Vim

## 1.1. Plugins

### 1.1.1. Pre-instalación

```bash
sudo apt-get install git

sudo apt-get install curl

mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

En `.vimrc` poner `:PluginInstall`.

### 1.2.2. Instalacion de plugins

---
| Plugin      | Commands  |
| ----------- | --------- |
| SURROUND    | cs ds yss |
| COMMENTARY  | gc        |
| TITLECASE   | gt        |
| SORT-MOTION | gs        |
| SYSTEM-COPY | cp        |

System-copy: `apt-get install xsel`

[Personalizar VIM e instalar el plugin de Go](https://platzi.com/tutoriales/1149-go-basico/1708-personalizar-vim-e-instalar-el-plugin-de-go/)

SURROUND.VIM

```bash
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q
```

COMMENTARY.VIM

```bash
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
```

PATHOGEN.VIM

```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

BUNDLER.VIM

```bash
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-bundler.git
```

Instalar SnipMate para autocompletado de javascript: https://github.com/garbas/vim-snipmate#installing-snipmate
