function! SetArgs()
    let w:args=input('run args:',getwinvar(winnr(),"args"))
endfunction
function! SetExec()
    let a:exec=getwinvar(winnr(),"exec")
    if a:exec==""
        let w:exec=GetDefaultExec()
    end
    let w:exec=input('run exec:',getwinvar(winnr(),"exec"))
endfunction
function! Realpath(path)
    return expand('%:p')
endfunction
function! GetDefaultExec()
    let a:f=Realpath(bufname("%"))
    return "test -x ".a:f."&&cd `dirname ".a:f."`&&".a:f
endfunction
function! Run()
    w
    let a:args=getwinvar(winnr(),"args")
    let a:exec=getwinvar(winnr(),"exec")
    if a:exec==""
        let w:exec=GetDefaultExec()
        let a:exec=w:exec
    end
    let a:cmd="!".a:exec." ".a:args
    execute a:cmd
endfunction

nnoremap <LEADER><F9> :call SetExec()<CR>
nnoremap <F9> :call Run()<CR>
nnoremap <LEADER><F10> :call SetArgs()<CR>
