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

nnoremap <silent> <C-b> :buffers<CR>

"let g:multicursor_next_key='<C-,>'
"let g:multicursor_prev_key='<C-.>'
"let g:multicursor_skip_key='<C-x>'
"let g:multicursor_quit_key='<Esc>'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let NERDTreeShowHidden=1
let Tlist_Process_File_Always = 1
set tags=tags;
nnoremap <silent> <F8> :TlistToggle<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

let g:AutoPairsShortcutFastWrap="<c-h>"
let g:AutoPairsShortcutToggle="<c-g>"


" TagBar
nmap <F7> :TagbarToggle<CR>

"UltiSnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-w>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/Snippets']

"MultiCursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_start_word_key      = '<C-m>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<C-m>'
let g:multi_cursor_next_key            = '<C-m>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"

let g:syntastic_check_on_open = 0

function s:Cursor_Moved()
  let cur_pos = winline()
  if g:last_pos == 0
    set cul
    let g:last_pos = cur_pos
    return
  endif
  let diff = g:last_pos - cur_pos
  if diff > 1 || diff < -1
    set cul
  else
    set nocul
  endif
  let g:last_pos = cur_pos
endfunction
autocmd CursorMoved,CursorMovedI * call s:Cursor_Moved()

