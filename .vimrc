" designed for vim8+

if has("eval")                               " vim-tiny lacks 'eval'
  let skip_defaults_vim = 1
endif

"
set nocompatible

"####################### vi-compatible (~/.exrc) #######################

" " no flash on save (legacy)
set noflash
"
" " automatically indent new lines
set autoindent
"
" " automatically write files when changing when moving buffers
set autowrite
"
" " deactivate line numbers
set nonumber
"
" " turn col and row position on in bottom right
set ruler " see ruf for formatting
"
" " show command and insert mode
set showmode
"
" " expand tabs to spaces
set expandtab
"
" " tab width
set tabstop=2
"
"#######################################################################

" disable visual bell (also disable in .inputrc)
set t_vb=

let mapleader=","

set softtabstop=2

" mostly used with >> and <<
set shiftwidth=2

set smartindent

set smarttab

" ignore case unless uppercase present
set smartcase
set ignorecase

if v:version >= 800
  " stop vim from silently messing with files that it shouldn't
  set nofixendofline

  " better ascii friendly listchars
  set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>

  " no automatic folding
  set foldmethod=manual
  set nofoldenable
endif

" mark trailing spaces as errors
match IncSearch '\s\+$'

" enough for line numbers + gutter within 80 standard
set textwidth=72
"set colorcolumn=73

" replace tabs with spaces automatically
set expandtab

" disable relative line numbers, remove no to sample it
set norelativenumber

" makes ~ effectively invisible
"highlight NonText guifg=bg

" turn on default spell checking
"set spell

" disable spellcapcheck
set spc=

" risky, but cleaner
set nobackup
set noswapfile
set nowritebackup

set icon

" center the cursor always on the screen
"set scrolloff=999
" leave a little space at the bottom of the screen
set scrolloff=10

" highlight search hits
set hlsearch
set incsearch
set linebreak

" avoid most of the 'Hit Enter ...' messages
set shortmess=aoOtTI

" prevents truncated yanks, deletes, etc.
set viminfo='20,<1000,s1000

" wrap around when searching
set wrapscan
set nowrap

" Just the formatoptions defaults, these are changed per filetype by
" plugins.
set fo-=t   " don't auto-wrap text using text width
set fo+=c   " autowrap comments using textwidth with leader
set fo-=r   " don't auto-insert comment leader on enter in insert
set fo-=o   " don't auto-insert comment leader on o/O in normal
set fo+=q   " allow formatting of comments with gq
set fo-=w   " don't use trailing whitespace for paragraphs
set fo-=a   " disable auto-formatting of paragraph changes
set fo-=n   " don't recognized numbered lists
set fo+=j   " delete comment prefix when joining
set fo-=2   " don't use the indent of second paragraph line
set fo-=v   " don't use broken 'vi-compatible auto-wrapping'
set fo-=b   " don't use broken 'vi-compatible auto-wrapping'
set fo+=l   " long lines not broken in insert mode
set fo+=m   " multi-byte character line break support
set fo+=M   " don't add space before or after multi-byte char
set fo-=B   " don't add space between two multi-byte chars
set fo+=1   " don't break a line after a one-letter word

" requires PLATFORM env variable set (in ~/.bashrc)
if $PLATFORM == 'mac'
  " required for mac delete to work
  set backspace=indent,eol,start
endif

" stop complaints about switching buffer with changes
set hidden

" command history
set history=100

" here because plugins and stuff need it
if has("syntax")
  syntax enable
endif

" faster scrolling
set ttyfast

" allow sensing the filetype
filetype plugin on

" high contrast for streaming, etc.
set background=dark

" make gutter less annoying
hi SignColumn ctermbg=NONE

" base default color changes (gruvbox dark friendly)
hi StatusLine ctermfg=7 ctermbg=NONE
hi StatusLineNC ctermfg=8 ctermbg=NONE
hi String ctermfg=2 ctermbg=NONE
hi Statement ctermfg=1
hi Constant ctermfg=3
hi Comment ctermfg=7
hi Type ctermfg=5
hi Special ctermfg=6
hi PreProc ctermfg=6
hi Identifier ctermfg=6
hi Function ctermfg=4
hi ErrorMsg ctermfg=1 ctermbg=NONE term=reverse
hi Normal ctermbg=NONE ctermfg=NONE
"hi Special ctermfg=cyan
"hi LineNr ctermfg=darkgray ctermbg=NONE
"hi SpecialKey ctermfg=black ctermbg=NONE
"hi ModeMsg ctermfg=darkgray cterm=NONE ctermbg=NONE
"hi MoreMsg ctermfg=darkgray ctermbg=NONE
"hi NonText ctermfg=black ctermbg=NONE
"hi vimGlobal ctermfg=darkgray ctermbg=NONE
"hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
"hi Error ctermbg=234 ctermfg=darkred cterm=NONE
"hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
"hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
"hi Search ctermbg=236 ctermfg=darkyellow
"hi vimTodo ctermbg=236 ctermfg=darkred
"hi Todo ctermbg=236 ctermfg=darkred
"hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkyellow
"hi MatchParen ctermbg=236 ctermfg=darkred
"hi PreProc ctermfg=darkblue ctermbg=NONE
"hi Type ctermfg=cyan ctermbg=NONE

" color overrides
"au FileType * hi StatusLine ctermfg=darkgray ctermbg=NONE
"au FileType * hi StatusLineNC ctermfg=black ctermbg=NONE
"au FileType * hi Normal ctermbg=NONE
"au FileType * hi Special ctermfg=cyan
"au FileType * hi LineNr ctermfg=black ctermbg=NONE
"au FileType * hi SpecialKey ctermfg=black ctermbg=NONE
"au FileType * hi ModeMsg ctermfg=white cterm=NONE ctermbg=NONE
"au FileType * hi MoreMsg ctermfg=darkgray ctermbg=NONE
"au FileType * hi NonText ctermfg=black ctermbg=NONE
"au FileType * hi vimGlobal ctermfg=darkgray ctermbg=NONE
"au FileType * hi Comment ctermfg=darkgray ctermbg=NONE
"au FileType * hi goComment ctermfg=darkgray ctermbg=NONE
"au FileType * hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
"au FileType * hi Error ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi SpellBad ctermbg=0 ctermfg=1 cterm=NONE
"au FileType * hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
""au FileType * hi Search ctermbg=236 ctermfg=darkred
"au FileType * hi vimTodo ctermbg=236 ctermfg=darkred
"au FileType * hi Todo ctermbg=236 ctermfg=darkred
""au FileType * hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
"au FileType * hi MatchParen ctermbg=236 ctermfg=darkred

au FileType markdown,pandoc hi Title ctermfg=3 ctermbg=NONE
au FileType markdown hi markdownError ctermfg=1 ctermbg=NONE
au FileType markdown hi markdownListMarker ctermfg=8 ctermbg=NONE
au FileType markdown hi markdownCode ctermfg=7 ctermbg=NONE
au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc set tw=0
au FileType markdown,pandoc set wrap
au FileType yaml hi yamlBlockMappingKey ctermfg=NONE
au FileType yaml set sw=2
au FileType bash set sw=2
au FileType c set sw=8
au FileType markdown,pandoc noremap j gj
au FileType markdown,pandoc noremap k gk
au FileType sh set noet

" "(ru)ler (f)ormat (look at the bottom right of your window)
set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

"reload vimrc
nnoremap confr :source $HOME/.vimrc<CR>

" Y should be y$ always
map Y y$

" better command-line completion
set wildmenu

" :nohighlight
nnoremap <C-L> :noh<CR><C-L>

" fzf
map <leader>f :FZF<CR>

" enable omni-completion
set omnifunc=syntaxcomplete#Complete

"fix bork bash detection
if has("eval")  " vim-tiny detection
  fun! s:DetectBash()
    if getline(1) == '#!/usr/bin/bash' || getline(1) == '#!/bin/bash'
      set ft=bash
      set shiftwidth=2
    endif
  endfun
  autocmd BufNewFile,BufRead * call s:DetectBash()
endif

" Syntax of current token under cursor
if has("syntax")
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc
endif

" Opens file in last place you edited
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Function keys
map <F1> :set number!<CR>
map <F2> :call <SID>SynStack()<CR>

" Plugins
if filereadable(expand("~/.vim/autoload/plug.vim"))

  call plug#begin("~/.local/share/vim/plugins")
  "Plug 'morhetz/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  call plug#end()

endif

"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox

" read personal/private vim configuration (keep last to override)
"set rtp^=~/.vimpersonal
"set rtp^=~/.vimprivate
"set rtp^=~/.vimwork


