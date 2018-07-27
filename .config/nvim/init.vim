" Plugins
call plug#begin('~/.config/nvim/bundle')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Gruvbox color scheme
Plug 'morhetz/gruvbox'

call plug#end()

colo gruvbox 

" Switch
set background=dark
let &t_8f="\<Esc>[38;2;%lu;%lu%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu%lum"
set termguicolors
