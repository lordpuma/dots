" if &compatible set nocompatible
" endif
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/local/bin/python3'

let mapleader = "\<Space>"


set runtimepath+=/Users/tomaskoreny/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/tomaskoreny/.cache/dein')
  call dein#begin('/Users/tomaskoreny/.cache/dein')
  call dein#add('/Users/tomaskoreny/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('junegunn/fzf.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('bdauria/angular-cli.vim') 
  call dein#add('tpope/vim-fugitive')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('Shougo/neco-vim')
  call dein#add('mhinz/vim-startify')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('Shougo/denite.nvim')
  call dein#add('neoclide/coc.nvim', {'build': 'yarn install'})
  call dein#add('dylanaraps/wal.vim')
  " call dein#add('chrisbra/Colorizer')
  " call dein#add('majutsushi/tagbar')
  " call dein#add('vim-latex/vim-latex')
  " call dein#add('xuhdev/vim-latex-live-preview')
  " call dein#add('rizzatti/dash.vim')
  " call dein#add('OmniSharp/omnisharp-vim')
  " call dein#add('christoomey/vim-tmux-navigator')
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')
  " call dein#add('honza/vim-snippets')
  " call dein#add('romainl/vim-cool')
  " call dein#add('cocopon/iceberg.vim')
  " call dein#add('w0rp/ale') 
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

autocmd VimEnter * if globpath('.,..','node_modules/@angular') != '' | call angular_cli#init() | endif

" let g:OmniSharp_server_use_mono = 1

" let g:tex_flavor='latex'

" let g:livepreview_previewer = '/Applications/Skim.app/Contents/MacOS/Skim'

let g:coc_node_path = '/Users/tomaskoreny/.nvm/versions/node/v11.11.0/bin/node'

let g:coc_global_extensions = ['coc-angular', 'coc-marketplace', 'coc-tsserver', 'coc-tslint', 'coc-stylelint', 'coc-html', 'coc-tag', 'coc-prettier', 'coc-yaml', 'coc-json', 'coc-css', 'coc-sh', 'coc-vimtex', 'coc-go', 'coc-git']

let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'scss': ['stylelint'],
      \ 'vim': ['vint'],
      \  }

let g:NERDSpaceDelims = 1

let g:colorizer_auto_filetype='css,html'
           
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

filetype plugin indent on
syntax on

set hidden
set rtp+=/usr/local/opt/fzf
set noshowmode
set relativenumber
set number
set expandtab
set tabstop=2
set shiftwidth=2
"color iceberg
colorscheme wal
let g:airline_theme='iceberg'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

set colorcolumn=80,120
" imap <TAB>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" QUICKLY JUMP BETWEEN FILES AND BUFFERS
nnoremap <C-p> :Buffers<CR>
nnoremap <C-u> :GFiles<CR>
nnoremap <C-i> :Files<CR>

" QUICK GIT ACTIONS
nnoremap <leader>g :G<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :GFiles?<CR>

" QUICK CODE ACTION
nmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>cr <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F7> :Vexplore<CR>
nnoremap <C-n> :EComponent 
nnoremap <C-m> :ETemplate 
nnoremap <C-b> :EStyle 

tnoremap <Esc> <C-\><C-n>


tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

autocmd CursorHoldI,CursorMovedI * silent! call CocAction('showSignatureHelp')

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
set cmdheight=2

" WRITE SPECIAL LETTERS
imap =a á
imap =A Á
imap +a ä
imap +A Ä
imap +c č
imap +C Č
imap +d ď
imap +D Ď
imap =e é
imap +e ě
imap =E É
imap +E Ě
imap =i í
imap =I Í
imap =l ĺ
imap =L Ĺ
imap +l ľ
imap +L Ľ
imap +n ň
imap +N Ň
imap =o ó
imap =O Ó
imap +o ô
imap +O Ô
imap "o ö
imap "O Ö
imap =r ŕ
imap =R Ŕ
imap +r ř
imap +R Ř
imap +s š
imap +S Š
imap +t ť
imap +T Ť
imap =u ú
imap =U Ú
imap +u ů
imap +U Ů
imap "u ü
imap "U Ü
imap =y ý
imap =Y Ý
imap +z ž
imap +Z Ž

" function! WriteAndCompileLatex() 
  " write
  " Latexmk
  " LatexView
" endfunction

" nnoremap <C-n> :call WriteAndCompileLatex()<CR>
" nnoremap <F5> :w <bar> :make test<CR>

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
