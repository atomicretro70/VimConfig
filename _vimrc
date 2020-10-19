" ############################################################################
" Manage plugins with vim-plug

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall -sync | source $MYVIMRC
endif

" Load the plugins
call plug#begin('~/.vim/plugged')
   Plug 'junegunn/vim-plug'                " enables help on vim
   Plug 'preservim/nerdtree'               " install nerdtree
   Plug 'vim-airline/vim-airline'          " install vim-airline
   Plug 'vim-airline/vim-airline-themes'   " install airline themes
   Plug 'mbbill/undotree'                  " install undotree
call plug#end()

" ############################################################################
" AirLine Configuration

" Turn on the PowerLine fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1

" ############################################################################
" NERDTree Configuration

" Open Nerdtree at startup.  'augroup' insures these autocmd lines
" aren't executed again if .vimrc is sourced.
augroup AutoMake
   " If VIM was openned on the command line without specifying a file then
   "    automatically open NERDTree.
   autocmd StdinReadPre * let s:std_in=1
   autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

   " If NERDTree is the only window open then close vim altogether
   autocmd BufEnter * if (winnr("$")==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

   " If more than one window and previous buffer was NERDTree, go back to it.
   autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# |endif
augroup END

" Have NERDTree show dot files by default
let NERDTreeShowHidden = 1

" Have NERDTree split close after opening a file
let g:NERDTreeQuitOnOpen = 1

" ############################################################################
" Swapping configuration: Code, Prose, Slides
if ("win32") || has("win64")
   let $VIHOMEROOT="$HOME/vimfiles"
elseif has("linux")
   let $VIMHOMEROOT="$HOME/.vim"
endif

" Define Commands for swapping configurations
command! Prose  source $VIMHOMEROOT/configForProse.vim
command! Code   source $VIMHOMEROOT/configForCode.vim
command! Slides source $VIMHOMEROOT/configForSlides.vim

" 'Code' is our default configuration
Code

" ############################################################################
" Mappings for Tabs

" Setup shortcuts for working with tabs.  All use nnoremap or
" normal mode noremap.  This makes the mapping effective only in normal
" mode and doesn't allow recursion of mappings.

"tn makes a new tab, tc closes the current tab
nnoremap <leader>tn :tab-new<CR>
nnoremap <leader>tc :tabclose<CR>

" th and tl moves to the next tab to the left or right
nnoremap <leader>th :tabprevious<CR>
nnoremap <leader>tl :tabnext<CR>

" t< and t> moves the current tab one position left or right
nnoremap <leader>t< :tabmove -<CR>
nnoremap <leader>t> :tabmove +<CR>

" ############################################################################
" Mappings for window splits

" Speed up moving between window splits so we don't have to press ctrl
" wn creates a new split (above this one)
" wv creates a new split beside this one
" wc closes the current tab
nnoremap <leader>wn :spl<CR>
nnoremap <leader>wv :vs<CR>
nnoremap <leader>wc <C-W>c

" wh,wj,wk,wl moves to the next split in the indicated direction
nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l

" w= makes all splits equal size
" w+,w- increase/decrease the size of the current split
nnoremap <leader>w= <C-W>=
nnoremap <leader>w+ <C-W>+
nnoremap <leader>w- <C-W>-

" wx swapps this split with the next one
nnoremap <leader>wx <C-W>x

" ############################################################################
" Other Mappings

" <leader>ev edit or <leader>sv source .vimrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" <leader>nt toggle NERDTree on/off
nnoremap <leader>nt :NERDTreeToggle<CR>

" <leader>ut toggle Undotree on/off
nnoremap <leader>ut :UndotreeToggle<CR>

