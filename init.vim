set nocompatible
filetype off
""""""""""""""""""""""
"""" VUNDLE DEFINITION
""""""""""""""""""""""
let vimDir = "$HOME/.config/nvim"
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#rc("$HOME/.config/nvim/bundle")
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"" other plugins
" git commands support
Plugin 'tpope/vim-fugitive'
" fuzzy project search
Plugin 'ctrlp.vim'
" beautiful statusline in vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" project tree
Plugin 'The-NERD-tree'
Plugin 'ruby.vim'
Plugin 'rails.vim'
" expand delimiters support to HTML, Ruby, and other langs
Plugin 'matchit.zip'
Plugin 'endwise.vim'
" surround commands
Plugin 'surround.vim'
" Sublime Text multiple coursors support
Plugin 'terryma/vim-multiple-cursors'
" whitespace highlighting
Plugin 'ntpeters/vim-better-whitespace'
" expand text region to delimiters and paragraphs
Plugin 'terryma/vim-expand-region'
" vim Tmux support
Plugin 'benmills/vimux'
" run ruby tests in Tmux pane
Plugin 'pgr0ss/vimux-ruby-test'
" create Gist from vim contents
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
" markdown highlighting
Bundle 'gabrielelana/vim-markdown'
" In file searching
Plugin 'eugen0329/vim-esearch'
" Syntax for coffeescript
Plugin 'vim-coffee-script'

call vundle#end()

""""""""""""""""""
"""" PLUGIN CONFIG
""""""""""""""""""

" ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .sql
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "jellybeans"
let g:airline#extensions#tabline#show_buffers = 0

" NERDTree
nmap <silent> <Tab> :NERDTreeToggle<CR>

" Gist
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
"let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_clip_command = 'pbcopy'

"" Vim serach
let g:esearch = {
  \ 'adapter':          'ag',
  \ 'backend':          'nvim',
  \ 'out':              'win',
  \ 'batch_size':       1000,
  \ 'use':              ['visual', 'hlsearch', 'last'],
  \ 'default_mappings': 1,
  \}
"" Vimux
let g:vimux_ruby_cmd_all_tests = "bundle exec bin/testunit"
let VimuxUseNearest = 0

""""""""""""""""""""""
"""" SYNTAX AND COLORS
""""""""""""""""""""""
filetype plugin indent on
syntax on
set termguicolors
color jellybeans
set number
set softtabstop=2 shiftwidth=2 expandtab
" straight vertical line for split
set fillchars+=vert:│

"""""""""""""""""""""
"""" GENERAL SETTINGS
"""""""""""""""""""""

" always display statusline
set laststatus=2
set encoding=utf-8
" setup search to propagate immediately
set incsearch
set hlsearch
" split windows to right and below
set splitbelow
set splitright
" do not set problematic swapfile
set noswapfile
" use gui mouse
set mouse=a
" do not wrap lines
set wrap!
set backspace=indent,eol,start
" yank to the main system clipboard
set clipboard=unnamed

"""""""""""""""""
"""" KEY MAPPINGS
"""""""""""""""""
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-S-Left> :tabprevious<CR>
nmap <silent> <C-S-Right> :tabnext<CR>
nmap <silent> <Leader>T :RunAllRubyTests<CR>
nmap <silent> <Leader>t :RunRubyFocusedContext<CR>
