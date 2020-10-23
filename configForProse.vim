" First go back to our qconfig mode (which is code).
source $VIMROOT/configForCode.vim

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

