" Open/Close quickfix with custom key
nnoremap <leader>q :call ToggleQuickfix()<CR>

let g:is_quickfix_opened = 0

function ToggleQuickfix()
  if g:is_quickfix_opened
    cclose
    let g:is_quickfix_opened = 0
  else
    copen
    let g:is_quickfix_opened = 1
  endif
endfunction
