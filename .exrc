syntax on
highlight Comment ctermfg=DarkMagenta guifg=DarkMagenta
filetype plugin on

"call pathogen#runtime_append_all_bundles()

au BufRead,BufNewFile Thorfile setfiletype ruby
au BufRead,BufNewFile *.spec setfiletype ruby

set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set stl=%f%m\ (%l,%v)\ %P
set nocompatible
set formatoptions=tcoql
"set grepprg=ack\ -a\ $*
set grepprg=ack\ --text\ $*
set autoindent
set backspace=2
"set background=dark
"colorscheme solarized

let mapleader = ","

command MigrateDev wa|!boson load_db prod && rake db:migrate DM_ENV=production RAILS_ENV=development --trace
command -nargs=1 Fmethod grep "def\s+(self\.)?<args>"
command -nargs=* -complete=file G !git <args>
command -nargs=* D !ditz <args>
command -nargs=1 C !cheat <args>|less
command -nargs=* -complete=file B !boson <args>
command -nargs=* -complete=file T !thor <args>
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

runtime macros/matchit.vim
