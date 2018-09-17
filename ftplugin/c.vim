" quickfix window setting
let leader = ","
let mapleader = ","

let s:quickfixWindow = "close"
function! s:openCloseQuickfix()
  if "open" ==? g:quickfixWindow
    let s:quickfixWindow = "close"
    cclose
  else
    let s:quickfixWindow = "open"
    copen
  end
endfunction

nnoremap <C-c> call s:openCloseQuickfix()
