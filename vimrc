" AUTORELOAD VIMRC
autocmd! bufwritepost .vimrc source % 

" LOAD PATHOGEN
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" KEYMAPPINGS
  let mapleader = ","
  " EASY PASTING
  set pastetoggle=<F8>
  set clipboard=unnamed
  " TOGGLE SEARCH HIGHLIGHT
  noremap <Leader>n :nohl<CR>
  vnoremap <Leader>n :nohl<CR>
  inoremap <Leader>n :nohl<CR>
  " FAST EXIT
  noremap <Leader>q :quit<CR>
  noremap <Leader>Q :qa!<CR>
  " TAB NAVIGATION
  nnoremap tn :tabnew<CR>
  nnoremap td :tabclose<CR>
  " NERDTREE
  map <F2> :NERDTreeToggle<CR>
  " TAGLIST
  map <F3> :TlistToggle<CR>
  " MOST RECENTLY USED FILES
  map <F4> :MRU<CR>
  " CONQUE SHELL
  map <F5> :ConqueTermSplit bash<CR>

" PLUGIN SETTINGS
  " CTRLP
    let g:ctrlp_max_height = 10 

  " TAGLIST
  let Tlist_Use_Right_Window = 1

  " NERDTREE
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " autoclose when NERDTree is the only windows left

  " PYTHON
  map <Leader>g :call RopeGotoDefinition()<CR>
  let ropevim_enable_shortcuts = 1
  let g:pymode = 1
  let g:pymode_trim_whitespaces = 1
  let g:pymode_options = 1
  let g:pymode_python = 'python'
  let g:pymode_motion = 1
  let g:pymode_rope_goto_def_newwin = "vnew"
  let g:pymode_rope_extended_complete = 1
  let g:pymode_breakpoint = 0
  let g:pymode_syntax = 1
  let g:pymode_virtualenv = 1
  let g:pymode_rope_always_show_complete_menu = 1

  set completeopt=longest,menuone
  function! OmniPopup(action)
      if pumvisible()
          if a:action == 'j'
              return "\<C-N>"
          elseif a:action == 'k'
              return "\<C-P>"
          endif
      endif
      return a:action
  endfunction

  inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
  inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>





" SHOW UNNEEDED WHITESPACES
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

set number

set nobackup
set nowritebackup
set noswapfile

set hlsearch
set incsearch
set ignorecase
set smartcase

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set autoindent

syntax on
