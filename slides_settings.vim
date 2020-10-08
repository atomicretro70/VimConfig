let mapleader = "\<Space>"

nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" presentation mode
nnoremap <Left> :silent bp<CR> :redraw!<CR>
nnoremap <Right> :silent bn<CR> :redraw!<CR>

nnoremap <F1> :set relativenumber! number! showmode! showcmd! hidden!  ruler!<CR>
nnoremap <F2> :call DisplayPresentationBoundaries()<CR>
nnoremap <F3> :call FindExecuteCommand()<CR>

" jump to slides
nnoremap <F9> :call JumpFirstBuffer()<CR> :redraw!<CR>
nnoremap <F10> :call JumpSecondToLastBuffer()<CR> :redraw!<CR>
nnoremap <F11> :call JumpLastBuffer()<CR> :redraw!<CR>


