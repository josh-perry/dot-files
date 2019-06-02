" Enable line numbers
set number

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set nocompatible
execute pathogen#infect()
filetype plugin indent on

let g:ctrlp_open_new_file = 'r'
let g:ctrlp_custom_ignore = 'node_modules'

" NERD tree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_moon_checkers = ['moonc', 'mooncheck']

set termguicolors

colorscheme base16-material-darker
