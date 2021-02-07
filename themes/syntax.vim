" Syntax highlighting
let g:python_highlight_all=1

" Change this when you know where i3 will be
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

syntax on

if (has('termguicolors'))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

" Neoterm
set guifont=Monoid:h12.5
let g:neoterm_default_mod="botright"
