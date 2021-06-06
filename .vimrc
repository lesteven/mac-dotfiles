syntax on
set number
set clipboard+=unnamed
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

filetype plugin on
filetype indent on "different indents for diff languages

set hlsearch "when search, highlight all

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/ "highlights white space at end

set statusline+=%F "current file path

set statusline+=%= "right align from now on
set statusline+=[line:%l] "line number
set statusline+=\  "add space
set statusline+=[col:%c] "column number

set laststatus=2 "to always display status line

augroup typescriptreact
  au!
  autocmd BufNewFile,BufRead *.tsx   set filetype=typescript
  autocmd BufNewFile,BufRead *.tsx   set filetype=javascript
augroup END

set nofixeol
