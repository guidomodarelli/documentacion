# Vim

## .vimrc
```vim
set nocompatible " be improved, required
set nowrap
set encoding=utf8
" --------------------------------------------------------------
" set the runtime path to include Vundle and initialize
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

" Utility
Bundle 'edkolev/tmuxline.vim'
Plugin 'BufOnly.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-system-copy'
Plugin 'christoomey/vim-titlecase'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'godlygeek/tabular'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'junegunn/fzf'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-dispatch'
Plugin 'wesQ3/vim-windowswap'

" Generic Programming Support
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'
Plugin 'maksimr/vim-jsbeautify'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Theme / Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on
" --------------------------------------------------------------
set updatetime=100
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
set hls
set ic
set is
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set laststatus=2
set cursorline
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
" --------------------------------------------------------------

" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
```
## Plugins
### Pre-instalación
```bash
sudo apt-get install git

sudo apt-get install curl

mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
En `.vimrc` poner `:PluginInstall`.

### Instalacion de plugins
---
| Plugin | Commands |
| ------ | -------- |
| SURROUND | cs ds yss |
| COMMENTARY | gc |
| TITLECASE | gt |
| SORT-MOTION | gs |
| SYSTEM-COPY | cp |

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
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTMzOTc0MzMwOSwxOTk4ODU4MDQxLDIwOT
E0NzM4MDQsNzMwOTk4MTE2XX0=
-->
