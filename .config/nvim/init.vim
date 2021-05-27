"  Mike Skramstad 
"  http://www.youtube.com
"  http://www.gitlab.com/mskramst
" 
"        
" A customized nvim file      

syntax on
filetype off 
set nocompatible
set showmatch                                       "convenient for showing the matching braces"
set relativenumber                                  "show line numbers and relative value for easy navigation"
set hidden                                          "allows for file buffers
set wildmenu                                        "creates a wild menu for toggling between files"
set wildignore+=**/node_modules/**                  "ignore node_modules folder"
set path+=**                                        "sets path to current directory"
set noerrorbells                                    "Turn off sound when errors made"
set colorcolumn=80                                  "Create a clear 80 char limit for coding"
set textwidth=80                                    "Set default settings for tabs, width, indent" 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nu                                              "Display line numbers"
set smartcase                                       "Helps with searching text set noswapfile   

set undodir=~/.vim/undodir                          "Stores undohistory in undodirectory  for edited files for future sessions"
set undofile                                        "Turns on saving of undo/redo history"

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"{{Plugins installed into Plugged folder}}
call plug#begin('~/.config/nvim/plugged')

"{{The Basics}}
    Plug 'mbbill/undotree'                           "Shows undo history"
    Plug 'jiangmiao/auto-pairs'                      "Create closing braces, parentheses etc." 
    Plug 'vim-utils/vim-man'                         "Vim manual"
    Plug 'sheerun/vim-polyglot'                      "Programming language support"
    Plug 'chase/vim-ansible-yaml'                    "Support for yaml files"
    Plug 'plasticboy/vim-markdown'                   "Allows for folding and collapsing of markdown files" 
" Used for showing preview of markdown files by pressing F8
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"{{Productivity}}
    Plug 'mattn/emmet-vim'                           "Allows for Emmet commands (see https://docs.emmet.io/)"
    Plug 'stsewd/fzf-checkout.vim'                   "Creates checkout boxes"
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  "Interactive file finder"
    Plug 'junegunn/fzf.vim'
    Plug 'tomtom/tcomment_vim'                       "Convenient method for commemnting out lines of code 'gcc'"
 
"{{Pope Plugins}}
    Plug 'tpope/vim-fugitive'                        "Git functionality in VIM"
    Plug 'tpope/vim-surround'                        "Allows to change surround values (i.e. cs"' would swtich " to ''"
    Plug 'tpope/vim-commentary'                      "Great for commenting out code (gc in visual mode)

"{{Syntax Highlighting and Colors}}
    Plug 'ap/vim-css-color'                          "Displays color in CSS files" 
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }    "Useful for formatting code correctly"

"{{Theming}}
    Plug 'vim-airline/vim-airline'                   "Creates bottom airline bar in vim"
    Plug 'vim-airline/vim-airline-themes'            "Allows for options for airline themes"
    Plug 'sainnhe/gruvbox-material'                  "Vim Color Scheme like Oceanic-Next"
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'joshdick/onedark.vim'
    " post install (yarn install | npm install) then load plugin only for editing supported files

"{{File Management}}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tweekmonster/gofmt.vim'

call plug#end()

if has('termguicolors')
  set termguicolors
endif

"theming 
let g:airline_theme = 'palenight'
let g:lightline = { 'colorscheme': 'onedark' }

"colorscheme gruvbox-material
colorscheme palenight

" For dark version.
set background=dark

let mapleader = " "

" sets the working directory to only current dirotry for ctrl P file search
let g:ctrlp_working_path_mode = '' 

" Prevents formatting in markdown files
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

let $FZF_DEFAULT_OPTS='--reverse'

" Ignore node_modules folder in CTRL P
"let g:ctrlp_custom_ignore = 'node_modules'
"
nnoremap <F5> :UndotreeToggle<cr>

autocmd FileType markdown let b:coc_suggest_disable = 1
autocmd Filetype markdown let b:autopairs_enabled = 0

"{{Mapping}}
map <silent> <F8> <Plug>MarkdownPreview

" Quickly insert an empty new line without entering insert mode
nnoremap <silent> [<space>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>

"{{Quick actions}}
nnoremap -d dd
nnoremap -c ddO

"{{Vim Related Actions}}
nnoremap <leader>so :so %<CR>
nnoremap <leader>vim :e ~/.config/nvim/init.vim<CR>

"{{Git related commands}}
nnoremap <leader>gs :G<CR>                                                       
nnoremap <leader>gc :GCheckout<CR>                                            

"{{Personal Quick Actions}}
nnoremap <leader>not :e ~/startanew/coding/vim.md<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>gf :Explore<CR>
nnoremap <leader>pr :Prettier<CR>

"{{Split Navigation}}
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>o :on
nnoremap <leader>q :q

"{{tcomment Settings}}

" Prevent tcomment from making a zillion mappings (we just want the operator).
let g:tcomment_mapleader1=''
let g:tcomment_mapleader2=''
let g:tcomment_mapleader_comment_anyway=''
let g:tcomment_textobject_inlinecomment=''

" The default (g<) is a bit awkward to type.
let g:tcomment_mapleader_uncomment_anyway='gu'

"{{vim-markdown Settings}}

" Turn off most of the features of this plug-in; I really just want the folding.
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext=0
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_emphasis_multiline=0
let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_frontmatter=1
let g:vim_markdown_new_list_item_indent=0

"{{Netrw settings}}
let g:netrw_fastbrowse = 0    " Closes directory if only buffer"
let g:netrw_browse_split = 0  " vertically split the window first"
let g:netrw_banner = 0        " remove the top heading"
let g:netrw_winsize = 0       " removes the netrw banner
let g:netrw_liststyle    = 3  " tree style listing
let g:netrw_altv         = 1  " change from left splitting to right splitting

