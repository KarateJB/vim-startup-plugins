function! FZF() abort
    let l:tempname = tempname()
    " fzf | awk '{ print $1":1:0" }' > file
    execute 'silent !fzf --multi ' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
    try
        execute 'cfile ' . l:tempname
        redraw!
    finally
        call delete(l:tempname)
    endtry
endfunction

" Command: FF
command! -nargs=* FF call FZF()

" If you enconters "no swap file" error, either remove the custom swap file location (option: "dir[ectory]") or type ":e! %" after opening the file.
