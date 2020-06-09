"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/general/paths.vim

" Source depending on if VSCode is our client
if exists('g:vscode')
    " VSCode extension
  source $HOME/.config/nvim/vscode/windows.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else
  " ordinary neovim
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/two-firewatch.vim
  source $HOME/.config/nvim/themes/material.vim
  source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/themes/gruvbox.vim
  source $HOME/.config/nvim/themes/ayu.vim
  source $HOME/.config/nvim/themes/oceanic_next.vim
  source $HOME/.config/nvim/themes/seoul256.vim
  source $HOME/.config/nvim/themes/sierra.vim
  source $HOME/.config/nvim/plug-config/ranger.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/vista.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  " source $HOME/.config/nvim/plug-config/easymotion.vim
endif

function FSharpFormat()
  " %!dotnet fantomas %:p --stdout --spaceBeforeColon --indent 2 --pageWidth 80
  let cmd = "%!dotnet fantomas " . bufname("%") . " --stdout --spaceBeforeColon --indent 2 --pageWidth 80"
  execute cmd
endfunction

au FileType fsharp call FileType_FSharp()
function! FileType_FSharp()
  if exists("b:did_ftfsharp") | return | endif
  let b:did_ftfsharp = 1
  nnoremap <silent> <Leader>p :call FSharpFormat()<CR>
endfunction
