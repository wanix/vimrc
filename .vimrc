call pathogen#infect()
set background=dark
syntax on

set nocompatible
filetype indent plugin on
set expandtab
set smarttab
"set autoindent
set tabstop=2
set shiftwidth=2

set hlsearch
nnoremap <F2> :noh<CR>
nnoremap <F3> :SyntasticToggleMode<CR>
nnoremap <F4> :SyntasticCheck<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"To enable Just puppet-lint and disable the parser uncomment next line
"let g:syntastic_puppet_checkers=['puppetlint']
"
let g:vim_markdown_folding_disabled=1
let python_space_errors = 1
let ruby_space_errors = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args='--max-line-length=160'
