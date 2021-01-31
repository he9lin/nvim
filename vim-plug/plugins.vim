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
    " Plug 'easymotion/vim-easymotion'
    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'luochen1990/rainbow'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'kaicataldo/material.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'rakr/vim-two-firewatch'
    Plug 'dracula/vim', { 'as': 'dracula'  }
    Plug 'morhetz/gruvbox'
    Plug 'ayu-theme/ayu-vim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'mhartington/oceanic-next'
    Plug 'arcticicestudio/nord-vim'
    Plug 'romainl/Apprentice'
    Plug 'ajmwagar/vim-deus'
    Plug 'danilo-augusto/vim-afterglow'
    Plug 'junegunn/seoul256.vim'
    Plug 'lifepillar/vim-solarized8'
    Plug 'AlessandroYorba/Sierra'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'relastle/bluewery.vim'
    Plug 'srcery-colors/srcery-vim'
    Plug 'Nequo/vim-allomancer'
    Plug 'victorze/foo'
    Plug 'kjssad/quantum.vim'
    Plug 'Lokaltog/vim-monotone'
    Plug 'Mizux/vim-colorschemes'
    Plug 'uloco/vim-bluloco-dark'
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    Plug 'rafi/awesome-vim-colorschemes'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3'  }
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    " Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Making stuff
    Plug 'neomake/neomake'
    " Better Comments
    Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'Yggdroot/indentLine'
    Plug 'benmills/vimux'
    " Language support
    Plug 'elixir-editors/vim-elixir'
    Plug 'neovimhaskell/haskell-vim'
  endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
