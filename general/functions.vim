" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
command! NumberToggle call NumberToggle()

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
