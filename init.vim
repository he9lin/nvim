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
  source $HOME/.config/nvim/plug-config/ranger.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source ~/.config/nvim/plug-config/nvimtree-config.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/vista.vim
  source $HOME/.config/nvim/themes/two-firewatch.vim
  source $HOME/.config/nvim/themes/material.vim
  source $HOME/.config/nvim/themes/gruvbox.vim
  source $HOME/.config/nvim/themes/ayu.vim
  source $HOME/.config/nvim/themes/seoul256.vim
  source $HOME/.config/nvim/themes/sierra.vim
  source $HOME/.config/nvim/themes/dracula.vim
  source $HOME/.config/nvim/themes/darcula.vim
  source $HOME/.config/nvim/themes/oceanic_next.vim
  luafile ~/.config/nvim/lua/plugins/tree-sitter-config.lua
  luafile ~/.config/nvim/lua/plugins/colorizer-config.lua
  luafile ~/.config/nvim/lua/plugins/compe-config.lua
  " LSP
  source ~/.config/nvim/plug-config/lsp-saga.vim
  source ~/.config/nvim/plug-config/lsp-config.vim
  source ~/.config/nvim/lua/lsp-wrapper.vim
  luafile ~/.config/nvim/lua/lsp/general-ls.lua
  luafile ~/.config/nvim/lua/lsp/lua-ls.lua
  luafile ~/.config/nvim/lua/lsp/vim-ls.lua
  luafile ~/.config/nvim/lua/lsp/lsp-config.lua
  luafile ~/.config/nvim/lua/lsp/elixir-ls.lua
endif

" TODO highlight groups for native LSP diagnostics
" add back other docs for compe
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>

" -- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" -- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" signature
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
