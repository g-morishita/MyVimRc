" auto compliation 
nnoremap <C-b> :w<CR>:!g++ -std=c++14 % -o %:p:h/a.out<CR> <CR>
" }}

function! AtCoderDownload()
  call inputsave()
  let g:url = input('ENTER URL: ')
  call inputrestore()
  execute "!oj download" . g:url
endfunction

function! AtCoderTest()
  execute "!oj test " . %:p:h . "/a.out"
endfunction

nnoremap <leader>t :w<CR>:call AtCoderTest()
nnoremap <leader>d :w<CR>:call AtCoderDownload()
