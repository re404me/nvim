if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'SirVer/ultisnips'
Plug 'cosminadrianpopescu/vim-tail'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'lervag/wiki.vim'
Plug 'mbbill/undotree'
Plug 'preservim/vim-markdown'
Plug 'takac/vim-hardtime'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-sleuth'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'dpelle/vim-LanguageTool'
call plug#end()

colorscheme PaperColor
" set colorcolumn=80
" set guicursor
" set smartindent
set conceallevel=2
set expandtab
set exrc
set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set nowrap
set nu
set scrolloff=8
set shiftwidth=4
set signcolumn=no
set tabstop=4 softtabstop=4
" set termguicolors
set undodir=~/.config/nvim/undodir
set undofile
set title
" set bg=light
set go=a
set mouse=a
set clipboard+=unnamedplus
set noshowmode
set noruler
" set laststatus=0
set noshowcmd
set encoding=utf-8
set number relativenumber
set wildmode=longest,list,full
set nocompatible

imap     <c-x><c-f> <plug>(fzf-complete-path)
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap     <leader><tab> <plug>(fzf-maps-n)
nmap     ga <Plug>(EasyAlign)
nnoremap , :Buffers<CR>
nnoremap <silent> Q gq
nnoremap <silent> gla :set spelllang=sk,en<CR>
nnoremap <silent> gle :set spelllang=en<CR>
nnoremap <silent> gls :set spelllang=sk<CR>
nnoremap S :%s//g<Left><Left>
nnoremap gt :UndotreeToggle<CR>
xmap     ga <Plug>(EasyAlign)

autocmd BufRead,BufNewFile *.incl,*.usr set filetype=abaqus
autocmd BufRead,BufNewFile *.psf set filetype=python
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
autocmd BufWritePre *.[ch] %s/\%$/\r/e
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
command! W :w

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=['/home/luk/.config/nvim/snips/']
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit='/home/luk/.config/nvim/snips/'
" let g:grammarous#show_first_error = 1
let g:hardtime_default_on = 1
let g:languagetool_jar='/home/luk/.local/share/LanguageTool-5.7/languagetool-commandline.jar'
" let g:markdown_folding = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vimtex_quickfix_open_on_warning = 0
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_link_target_type = 'md'
let g:wiki_root = '~/dox/wiki'
