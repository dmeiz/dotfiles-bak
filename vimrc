set nocompatible
filetype off

" vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'rails.vim'
Plugin 'The-NERD-tree'
Plugin 'fugitive.vim'
Plugin 'ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'easygrep'
Plugin 'csv.vim'

call vundle#end()

filetype plugin indent on

" treat some files as ruby source
"
au BufRead,BufNewFile Thorfile setfiletype ruby
au BufRead,BufNewFile *.jsx setfiletype ruby

" general settings
"
set shell=/bin/bash
set history=100
set tabstop=2
set expandtab
set shiftwidth=2
set laststatus=2
set stl=%f%m\ (%l,%v)\ %P
set formatoptions=tcoql
set grepprg=ag\ --nogroup\ --nocolor\ --case-sensitive
set autoindent
set backspace=2
set backupdir=~/tmp
set cursorline
set vb " turn on visualbell
set t_vb= " but set it to do nothing; this turns off annoying beeping
set nobackup " don't bother with .swp, .swo files

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
nnoremap <leader>t :tabnext<cr>
nnoremap <leader>r :tabprev<cr>
nnoremap <leader>p :set nopaste<cr>
nnoremap <leader>P :set paste<cr>

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
