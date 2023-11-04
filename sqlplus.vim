" Prerquisite: 
" 1. set alias or to PATH of your real sqlplus path, e.q. alias sqlplus='~/bin/sqlplus', '/c/oracle/11.2.0/client/bin/sqlplus.exe' ... etc
" 2. set the global variable in vimrc: g:oracle_db_id, g:oracle_db_pwd,
" g:oracle_db_tnsname

function! Sqlplus() abort
    silent! clear

    if !exists('g:oracle_db_id') || !exists('g:oracle_db_pwd') || !exists('g:oracle_db_tnsname')
        echom "Please set the global variables: g:oracle_db_id, g:oracle_db_pwd, g:oracle_db_tnsname"
        return
    endif

    " exe '!sqlplus id/pwd@tnsName @' . expand('%:p')
    let l:cmd = '!sqlplus ' . g:oracle_db_id . '/' . g:oracle_db_pwd . '@' . g:oracle_db_tnsname . ' @' . expand('%:p')
    silent exec 'silent ' . l:cmd
    silent redraw!
endfunction

command! Sqlplus call Sqlplus()
" echo 'select ....' | sqlplus id/pwd@tnsName
