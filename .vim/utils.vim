" Exec something and restore position
function! <SNR>3_ExecAndRestore(cmd)
    " Preparation: save last search, and cursor position.
    let cmd=a:cmd
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    exec cmd
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
