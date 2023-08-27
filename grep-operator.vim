" Grep Operator

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<CR>g@
vnoremap <leader>g :<C-U>call <SID>GrepOperator(visualmode())<CR>

function! s:GrepOperator(type)
  let tmp_unnamed_reg = @@

  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  if has("gui_running")
    silent execute "vimgrep " . shellescape(@@) . " **/*"
  else
    silent execute "grep! -R " . shellescape(@@) . " ."
  endif
  copen

  let @@ = tmp_unnamed_reg
endfunction
