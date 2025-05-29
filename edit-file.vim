function! Efile(path)
  " Check if cygpath is available.
  if !executable('cygpath')
    echoerr 'cygpath not found'
    return
  endif

  let l:path = a:path

  " Strip surrounding single or double quotes
  if l:path =~ "^['\"]" && l:path =~ "['\"]$"
    let l:path = l:path[1:-2] 
  endif

  if stridx(l:path, '/') == 0 || stridx(l:path, '~') == 0
    " Input is a Unix path: convert to Windows path
    let cyg_cmd = 'cygpath -w "' . l:path . '"'
  else
    " Input is not a Unix path: convert to Unix path
    let cyg_cmd = 'cygpath -u "' . l:path . '"'
  endif

  let l:editpath = trim(system(cyg_cmd))
  echom 'Opening ' . l:editpath
  execute 'edit' fnameescape(l:editpath)
endfunction

command! -nargs=1 Efile call Efile(<f-args>)
