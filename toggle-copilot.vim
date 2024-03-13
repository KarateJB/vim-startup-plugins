" Open/Close quickfix with custom key
nnoremap <silent> <leader>ct 
      \ :call <SID>ToggleCopilot()<CR>

" Enable/Disable by filetype
" let g:copilot_filetypes = { 'xml': v:false, 'markdown': v:false, 'log': v:false, }

function! s:ToggleCopilot()
  " Notice that "b:copilot_enabled" doesn't exist until we set its value, so to disable copilot we need to toggle twice in the first time.
  if exists('b:copilot_enabled') && b:copilot_enabled
      let b:copilot_enabled = v:false
      echo "GitHub Copilot disabled."
  else
      let b:copilot_enabled = v:true
      echo "GitHub Copilot enabled."
  endif
endfunction

