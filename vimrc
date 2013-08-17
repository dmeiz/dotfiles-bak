
"call pathogen#runtime_append_all_bundles()

" file type detection
"
filetype plugin on
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
set grepprg=ag\ $* 
set autoindent
set backspace=2
set t_Co=256

" syntax highlighting
"
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
"highlight Comment ctermfg=DarkMagenta guifg=DarkMagenta

let mapleader = ","

command MigrateDev wa|!boson load_db prod && rake db:migrate DM_ENV=production RAILS_ENV=development --trace
command -nargs=1 Fmethod grep "def\s+(self\.)?<args>"
command -nargs=* -complete=file G !git <args>
command -nargs=* D !ditz <args>
command -nargs=1 C !cheat <args>|less
command -nargs=* -complete=file B !boson <args>
command -nargs=* -complete=file T !thor <args>
command -nargs=* -complete=file A !rake <args>
command AA !rake -T
command TT !thor -T
" command -nargs=1 Sch !ruby ~/Projects/pitch/arl.rb <args>|less
command -nargs=1 Sch !arl <args>|less
command -nargs=1 Find !find . -name '*<args>*'

nnoremap <C-l> :grep <cword> app lib script<CR>
nnoremap ' `
nnoremap ` '
nmap <silent> <Leader>f :CommandT<CR>

nnoremap <leader>g :GundoToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>w :%s/\s\+$//g<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>r <esc>:tabnext<cr>
nnoremap <leader>e <esc>:tabprev<cr>

" runtime macros/matchit.vim
execute pathogen#infect()
