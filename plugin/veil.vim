if exists("g:loaded_veil")
    finish
endif
let g:loaded_veil = 1

let g:veiltoggle=0
let g:veilcolor="gray"

function! s:Veil()
    if g:veiltoggle " unhide
        setlocal syntax< " restore old syntax
        syn clear veil
        let g:veiltoggle=0
    else " hide
        setlocal syntax=text
        syn match veil '[a-zA-ZçÇâÂàÀéÉêÊèÈîÎôÔûÛùÙœ]\zs[a-zA-Zçäâàëéèêîïôöûüùœ]\+'
        exe "hi veil ctermbg=" . g:veilcolor . " ctermfg=". g:veilcolor
        exe "hi veil guibg=" . g:veilcolor . " guifg=". g:veilcolor
        let g:veiltoggle=1
    endif
endfunction

nnoremap <silent> <Plug>Veil :call <sid>Veil()<cr>


