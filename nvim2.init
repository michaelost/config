"let g:falcon_lightline = 1
"let g:lightline.colorscheme = 'falcon'
"colorscheme falcon


let g:esearch = {
  \ 'adapter':          'ag',
  \ 'backend':          'vimproc',
  \ 'out':              'win',
  \ 'batch_size':       1000,
  \ 'use':              ['visual', 'hlsearch', 'last'],
  \ 'default_mappings': 1,
  \}

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir = $HOME."/.config/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.config/UltiSnips']
let g:UltiSnipsEnableSnipMate = 0


nnoremap <F3> :set hlsearch!<CR>

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"open nerdtree all file structure but opened current folder
map <leader>r :NERDTreeFind<cr>
"open nerdtree only curent folder
map <C-o> :NERDTreeToggle %<CR>
map ,l :!node %<cr>

vnoremap <silent> <C-w>p2 :<C-U>P2<CR>
vnoremap <silent> <C-w>p1 :<C-U>P1<CR>
vnoremap <silent> <C-w>d1 :<C-U>D<CR>
vnoremap <silent> <C-w>d2 :<C-U>D2<CR>
vnoremap <silent> <C-w>d3 :<C-U>D3<CR>
vnoremap <silent> <C-w>d4 :<C-U>D4<CR>
vnoremap <silent> <C-w>j :<C-U>TOJS<CR>
vnoremap <silent> <C-w>a1 :<C-U>Arr<CR>
vnoremap <silent> <C-w>a2 :<C-U>Arr2<CR>

autocmd VimResized * wincmd =

set background = "dark"
colorscheme palenight
set termguicolors 

