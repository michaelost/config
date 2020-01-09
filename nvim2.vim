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
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1


call plug#end()

set wildignore+=*/node_modules

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


map bb :buffers <CR>
map b1 :b1 <CR>
map b2 :b2 <CR>
map b3 :b3 <CR>
map b4 :b4 <CR>
map b5 :b5 <CR>



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

