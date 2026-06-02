" Function to focus on the window by iterating all windows
function! FocusWindowByBuffer_depreated(buffer_number) abort
  " Iterate through all windows
  for w in range(1, winnr('$'))
    " Switch to the window
    execute w . "wincmd w"
    " Check if the current window contains the specified buffer
    if bufnr('%') == a:buffer_number
      return
    endif
  endfor
  " If no window contains the buffer, show an error message
  echoerr "No window contains buffer " . a:buffer_number
endfunction

" Function to focus on the window by using window number
function! FocusWindowByBuffer(buffer_number) abort
  echom "FocusWindowByBuffer"
  " Get the window number for the given buffer
  let win_number = bufwinnr(a:buffer_number)
  " Check if the buffer is visible in any window
  if win_number == -1
    echoerr "No window contains buffer " . a:buffer_number
    return
  endif
  " Focus on the window containing the buffer
  execute win_number . "wincmd w"
endfunction

" Map <leader>fw to pre-fill the command :FocusWindowByBuffer
command! -nargs=1 FocusWindowByBuffer call FocusWindowByBuffer(<args>)
nnoremap <leader>ww :FocusWindowByBuffer 
