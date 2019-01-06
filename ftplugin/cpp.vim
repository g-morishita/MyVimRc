"ale linter setting {{
let b:ale_linter = {'cpp' : 'gcc'}
"}}

" auto compliation
nnoremap <C-l> :w<CR>:!g++ -std=c++14 % -o %:p:h/a.out<CR> <CR>
