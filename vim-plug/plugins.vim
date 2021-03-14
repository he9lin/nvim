" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'

  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'

  else
    " Text Navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    Plug 'christoomey/vim-tmux-navigator'
    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'luochen1990/rainbow'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'ayu-theme/ayu-vim'
    Plug 'Lokaltog/vim-monotone'
    Plug 'he9lin/awesome-vim-colorschemes'
    Plug 'he9lin/vim-allomancer'
    Plug 'he9lin/srcery-vim'
    Plug 'he9lin/intellij.vim'
    Plug 'he9lin/darcula'

    " Intellisense
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }
    " Terminal
    Plug 'kassio/neoterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Asynchronously run programs
    Plug 'neomake/neomake'
    " Better editing
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'Yggdroot/indentLine'
    Plug 'benmills/vimux'
    " Language support
    Plug 'sheerun/vim-polyglot'
    Plug 'elixir-editors/vim-elixir'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'fsharp/vim-fsharp', {
          \ 'for': 'fsharp',
          \ 'do':  'make fsautocomplete',
          \}
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
