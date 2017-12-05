execute pathogen#infect()
syntax on
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
let g:jsx_ext_required = 0
set number

set wildignore+=*/node_modules

set tabstop=2 
set softtabstop=2 
set shiftwidth=2
set expandtab

let g:multicursor_next_key='<C-,>'
let g:multicursor_prev_key='<C-.>'
let g:multicursor_skip_key='<C-x>'
let g:multicursor_quit_key='<Esc>'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let Tlist_Process_File_Always = 1
set tags=tags;
nnoremap <silent> <F8> :TlistToggle<CR>
