" Undo anything done by slides_settings.vim
let mapleader = "<leader>"

" Call Slides (setup the slides configuration so that the following unmappings
" don't create errors).
Slides

" Next unmap the mappings setup in slides
nunmap <S-Enter>
nunmap <CR>
nunmap <F1>
nunmap <F2>
nunmap <F3>
nunmap <F9>
nunmap <F10>
nunmap <F11>
nunmap <Up>
nunmap <Down>
nunmap <Left>
nunmap <Right>


" ######################################################
" ### Settings Specific to Using VIM as a Word Processor

" ### Search Settings
set ignorecase      " on: ignore case when using a search pattern
set smartcase       " ignore case when search string is all lower case
set gdefault        " use the 'g' flag for ":substitute"

" ### Geometry and Display Characteristics
set nonumber        " show/don't show line numbers
set norelativenumber " Show line numbers realtive to the cursor's current line

" ### Word Processing Specific
set spell spelllang=en_us

set relativenumber
set number
set showmode
set showcmd
set nohidden
set ruler

