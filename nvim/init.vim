call plug#begin()
 Plug 'ncm2/ncm2' 
 Plug 'roxma/nvim-yarp'
 Plug 'ncm2/ncm2-bufword'
 Plug 'ncm2/ncm2-path'
 Plug 'ncm2/ncm2-jedi'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'junegunn/fzf', { 'do': './install --bin' }
 Plug 'junegunn/fzf.vim'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'preservim/nerdtree'
 Plug 'drewtempelmeyer/palenight.vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 " LanguageServer client for NeoVim.
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }
call plug#end()

set termguicolors
set background=dark
colorscheme palenight
set encoding=UTF-8
set number relativenumber
let g:airline_theme = "palenight"

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" my custom shortcuts
nmap <C-p> :Files <CR> 
nnoremap <C-F> :Rgi <CR>                                                                                                                                                                                                               
nnoremap <A-j> :m .+1<CR>==                                                                                                                                                                                                            
nnoremap <A-k> :m .-2<CR>==                                                                                                                                                                                                            
inoremap <A-j> <Esc>:m .+1<CR>==gi                                                                                                                                                                                                     
inoremap <A-k> <Esc>:m .-2<CR>==gi                                                                                                                                                                                                     
vnoremap <A-j> :m '>+1<CR>gv=gv                                                                                                                                                                                                        
vnoremap <A-k> :m '<-2<CR>gv=gv
