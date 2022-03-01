function! CppFormat()
    let file_path = expand('%:p')
    execute "silent !clang-format -style=Google -i " . file_path
    execute ":e"
    execute ":se filetype=cpp"
endfunction
autocmd! BufWritePost *.cc call CppFormat()
autocmd! BufWritePost *.cpp call CppFormat()
autocmd! BufWritePost *.h call CppFormat()
autocmd! BufWritePost *.hpp call CppFormat()

function! RustFormat()
    let file_path = expand('%:p')
    execute "silent !rustfmt " . file_path
    execute ":e"
    execute ":se filetype=rust"
endfunction
autocmd! BufWritePost *.rs call RustFormat()

function! GoFormat()
    let file_path = expand('%:p')
    execute "silent !gofmt -w " . file_path
    execute ":e"
    execute ":se filetype=go"
endfunction
autocmd! BufWritePost *.go call GoFormat()

" restores cursor position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

syntax on
set nu
set nocp
set encoding=utf8
set tabstop=4
set autoindent
set expandtab
set hlsearch
set backspace=indent,eol,start
autocmd! FileType go setlocal noexpandtab
