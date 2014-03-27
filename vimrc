" vundle
"
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
set shell=/bin/bash

Bundle 'gmarik/vundle'

Bundle 'rails.vim'
Bundle 'The-NERD-tree'
Bundle 'rails.vim'
Bundle 'fugitive.vim'
Bundle 'ctrlp.vim'
Bundle "mattn/emmet-vim"

filetype plugin indent on

" treat some files as ruby source
"
au BufRead,BufNewFile Thorfile setfiletype ruby
au BufRead,BufNewFile *.spec setfiletype ruby

" general settings
"
set nocompatible
set history=100
set tabstop=2
set expandtab
set shiftwidth=2
set laststatus=2
set stl=%f%m\ (%l,%v)\ %P
set formatoptions=tcoql
set grepprg=ag\ --nogroup\ --nocolor
set autoindent
set backspace=2
set backupdir=~/tmp
set cursorline

" colors and syntax highlighting
"
set t_Co=256
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
"highlight Comment ctermfg=DarkMagenta guifg=DarkMagenta

let mapleader = ","

" Quickly open and reload vimrc
"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> :nohl <cr>

" Arrow keys resize current viewport
"
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

command MigrateDev wa|!boson load_db prod && rake db:migrate DM_ENV=production RAILS_ENV=development --trace
command -nargs=1 Fmethod grep "def\s+(self\.)?<args>"
command -nargs=* -complete=file G !git <args>
command -nargs=* -complete=file B !bundle exec <args>
command -nargs=* -complete=file T !thor <args>
command TT !thor -T
command -nargs=1 Sch !arl <args>|less

nnoremap <C-l> :grep <cword> app lib script<CR>
nnoremap ' `
nnoremap ` '
nmap <silent> <Leader>f :CommandT<CR>

nnoremap <leader>g :GundoToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>w :%s/\s\+$//g<CR>
nnoremap <leader>r <esc>:tabnext<cr>
nnoremap <leader>t <esc>:tabprev<cr>

" runtime macros/matchit.vim
"execute pathogen#infect()

" use silver searcher to index with ctrlp
"
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' 

" ignore some files and dirs when indexing with ctrlp
"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
