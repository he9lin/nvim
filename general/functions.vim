" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Elixir mapping
au FileType elixir call FileType_Elixir()
function! FileType_Elixir()
  if exists("b:did_ftelixir") | return | endif
  let b:did_ftelixir = 1
  map <Leader>i :call VimuxRunCommand("mix test " . bufname("%") . ":" . line("."))<CR>
  map <Leader>m :call VimuxRunCommand("mix test " . bufname("%"))<CR>
  map <Leader>n :call VimuxRunCommand("mix test")<CR>
  syntax enable
endfunction

" Remove trailing whitespaces automatically before save
" augroup strip_ws
"   autocmd BufWritePre * call utils#stripTrailingWhitespaces()
" augroup END

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

" Toggle transparent background
let t:is_transparent = 0
function! ToggleTransparent()
  if t:is_transparent == 0
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 1
  else
    set background=dark
    let t:is_transparent = 0
  endif
endfunction
