" Turn on syntax highlighting.
syntax on

" Set compatibility to Vim only.
set nocompatible
set nolist
set relativenumber 
set modelines=0 " Turn off modelines
set wrap " Automatically wrap text that extends beyond the screen length.
" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start
" Speed up scrolling in Vim
set ttyfast
" Status bar
set laststatus=2
" Display options
set showmode
set showcmd
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>
" Show line numbers
set number
" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" Encoding
set encoding=utf-8
" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
" For plug-ins to load correctly.
filetype plugin indent on 

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>gs :CocSearch 
noremap <leader>p :Prettier<cr> 
noremap <leader>fs :Files<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-system-copy'
Plug 'Townk/vim-autoclose'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {'do': 'npm install'}

" syntax
Plug 'sheerun/vim-polyglot'

" Tree
Plug 'scrooloose/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax

" autocomplete
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'grvcoelho/vim-javascript-snippets'

" status bar 
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on 

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:AutoClosePreserveDotReg = 0

" --------------------------------------------------------------

" autocmd vimenter * NERDTree
map <leader>n :NERDTreeToggle<CR>

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

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTabs='\t'

" --------------------------------------------------------------

let g:javascript_plugin_flow=1

" kite
let g:kite_supported_languages=["javascript","python"]

" coc
autocmd FileType python let b:coc_suggest_disable=1
autocmd FileType javascript let b:coc_suggest_disable=1
autocmd FileType scss setl iskeyword+=@-@

let g:airline_powerline_fonts = 1
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" maps
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" plugs
map <leader>nt :NERDTreeFind<CR>
map <leader>p :Files<CR>
map <leader>ag :Ag<CR>

" tabs navigation
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>

" buffers
map <leader>ob :Buffers<CR>

" Use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

nmap <leader>a <Plug>(snipMateTrigger)
