" Grep Operator

" Search by motion in Normal mode, like <leader>gaw
nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<CR>g@
" Search selected text in Visual mode
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

  if !exists('g:grep_by_rg') || g:vsp_grep_by_rg == v:false
    if has("gui_running")
      let saved_ignorecase = &ignorecase
      silent execute "set ignorecase"
      silent execute "vimgrep " . shellescape(@@) . " **/*"
      let &ignorecase = saved_ignorecase
    else
      silent execute "grep! -iR " . shellescape(@@) . " ."
    endif
  else
    " jremmen/vim-ripgrep is required
    silent execute "Rg -i " . shellescape(@@)
  endif

  copen

  let @@ = tmp_unnamed_reg
endfunction
