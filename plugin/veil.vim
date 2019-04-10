if exists("g:loaded_veil")
    finish
endif
let g:loaded_veil = 1

let g:veiltoggle=0

function! GetHiColor(group, term)
   let output = execute('hi ' . a:group)
   return matchstr(output, a:term.'=\zs\S*')
endfunction


function! s:Veil()
    let g:veilcolorc=GetHiColor('Comment', 'ctermfg')
    let g:veilcolorg=GetHiColor('Comment', 'guifg')

    if g:veiltoggle " unhide
        setlocal syntax< " restore old syntax
        syn clear veil
        let g:veiltoggle=0
    else " hide
        setlocal syntax=text
        syn match veil '[a-zA-ZçÇâÂàÀéÉêÊèÈîÎôÔûÛùÙœ]\zs[a-zA-Zçäâàëéèêîïôöûüùœ]\+'
        exe "hi veil ctermbg=" . g:veilcolorc . " ctermfg=". g:veilcolorc
        exe "hi veil guibg=" . g:veilcolorg . " guifg=". g:veilcolorg
        let g:veiltoggle=1
    endif
endfunction

nnoremap <silent> <Plug>Veil :call <sid>Veil()<cr>


