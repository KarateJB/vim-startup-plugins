" Create a command to call the SumNumbers function
command! Sum call <SID>SumNumbers()

function! s:SumNumbers()
  let total = 0
  " Iterate over each line in the buffer
  for line in range(1, line('$'))
    " Get the current line content and convert it to a number
    let num = str2float(getline(line))
    " Add the number to the total
    let total += num
  endfor

  " Yank the result into register "s"
  let @s = string(total)
  " Display the result in the command line
  " echo "Sum:" . total
  echo "The sum was yanked to register s: " . <SID>FormatFloatWithComma(total)
endfunction


function! s:FormatFloatWithComma(num)
    let l:float_str = printf('%.2f', a:num)
    let [l:int_part, l:frac_part] = split(l:float_str, '\.')

    let l:int_part = substitute(l:int_part, '\d\zs\(\d\{3}\)\ze\%(\d\{3}\)*$', ',\1', 'g')

    return l:int_part . '.' . l:frac_part
endfunction

