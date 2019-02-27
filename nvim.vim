call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'w0rp/ale'
  Plug 'tpope/vim-surround'
  "Plug 'fenetikm/falcon'
  Plug '~/Documents/falcon'
  Plug 'drewtempelmeyer/palenight.vim'

  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  Plug 'eugen0329/vim-esearch'
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'rking/ag.vim'
  Plug 'airblade/vim-gitgutter'

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
map <C-l> :ALEToggle<CR>


let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:ale_linters = { 'js': ['stylelint', 'eslint', 'jshint'], }
let g:ale_fixers = { 'javascript': [ 'stylelint', 'eslint']}

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


set background = "dark"
colorscheme palenight
set termguicolors 




