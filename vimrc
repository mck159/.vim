let mapleader = ","

" TAG LIST SETTINGS
let Tlist_Use_Right_Window = 1

" TAB NAVIGATION
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

" PYTHON
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1

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

" AUTORELOAD VIMRC
autocmd! bufwritepost .vimrc source %      

" EASY EXIT
noremap <Leader>q :quit<CR>
noremap <Leader>Q :qa!<CR>

" LOAD PATHOGEN
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" MINIBUFEXPLORER SETTINGS
let g:miniBufExplModSelTarget = 1
let g:miniBufExplTabWrap = 5
map <C-b> :MiniBufExplorer<CR>
map <C-c> :CMiniBufExplorer<CR>
map <C-Tab> :bn<CR>

" EASY PASTING
set pastetoggle=<F2>
set clipboard=unnamed

" NO HIGHLIGHTING
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

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
