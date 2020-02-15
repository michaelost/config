call plug#begin('~/.vim/autoload')


"call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'w0rp/ale'
  Plug 'tpope/vim-surround'
  "Plug 'fenetikm/falcon'
  Plug '~/Documents/falcon'
  Plug 'drewtempelmeyer/palenight.vim'

  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-fugitive'

  Plug 'SirVer/ultisnips'

  Plug 'honza/vim-snippets'

"  Plug 'Shougo/neosnippet.vim'
"  Plug 'Shougo/neosnippet-snippets'

  Plug 'eugen0329/vim-esearch'
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'rking/ag.vim'
  Plug 'airblade/vim-gitgutter'

  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  Plug 'mattn/emmet-vim'

  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }



" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'
"------------------------ THEME ------------------------
" most importantly you need a good color scheme to write good code :D
Plug 'dikiaap/minimalist'

  Plug 'HerringtonDarkholme/yats.vim'
"  Plug 'mhartington/nvim-typescript', {'build': './install.sh'}

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1

"let g:python3_host_prog = '~/Python3.7.2'
let g:python3_host_prog = '/usr/local/bin/python3.7'

call plug#end()

set wildignore+=*/node_modules
set clipboard+=unnamedplus


set tabstop=2 
set softtabstop=2 
set shiftwidth=2
set expandtab
set number

map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-p> :FZF<CR>
map <Tab> :ALEToggle<CR>
map <C-f> :ALEFix<CR>


let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:ale_linters = { 'js': ['stylelint', 'eslint', 'jshint'], }
let g:ale_fixers = { 'javascript': [ 'stylelint', 'eslint', 'prettier']}

"LINT
"React  https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ale_statusline_format = ['error', 'warning %d', '']
"g:syntastic_javascript_checkers = ['eslint']
let g:ale_sign_error = '⚠️' "Less aggressive than the default '>>'
let g:ale_sign_warning = '💡'
"let g:ale_echo_msg_warning_str = 'Warning 📣'
"let g:ale_echo_msg_error_str = '❧ Error'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
"run eslint in the backgrount with AsyncRun
"autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %
"autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
"autocmd BufWritePost *.css AsyncRun -post=checktime stylelint --fix %
"autocmd BufWritePost *.scss AsyncRun -post=checktime stylelint --fix %
"~/node_modules/eslint/bin/eslint.js
"
let g:ale_css_stylelint_executable = 'stylelint'
let g:ale_css_stylelint_options = ''
let g:ale_css_stylelint_use_global = 1

let g:deoplete#enable_at_startup = 1

"neosnippet
"
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)

"falcon
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
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsExpandTrigger = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir = $HOME."/.config/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.config/UltiSnips']
let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsListSnippets="<c-m>"


inoremap jj <esc>
inoremap kj <CR>


nnoremap <F3> :set hlsearch!<CR>

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"open nerdtree all file structure but opened current folder
map <leader>r :NERDTreeFind<cr>
"open nerdtree only curent folder
map <C-o> :NERDTreeToggle %<CR>
map ,l :!node %<cr>

map <F2> :w! <CR>
map <F4> :q! <CR>
map qj <C-w>h
map q; <C-w>l
map <F7> "+y
map <F8> "+p
map <F9> "1y
map <F12> "1p

map fj "+P

map mm :buffers <CR>
map m1 :b1 <CR>
map m2 :b2 <CR>
map m3 :b3 <CR>
map m4 :b4 <CR>
map m5 :b5 <CR>
map m6 :b6 <CR>
map m7 :b7 <CR>
map m8 :b8 <CR>



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



" Set bin if you have many instalations
let g:deoplete#sources#ternjs#tern_bin = '/home/michaelost/.nvm/versions/node/v10.12.0/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1

" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0


"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ ]



let g:prettier#autoformat = 0
let g:prettier#exec_cmd_path = "/home/michaelost/.nvm/versions/node/v10.12.0/bin/prettier"
