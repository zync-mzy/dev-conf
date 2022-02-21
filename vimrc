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

syntax on
set nu
set encoding=utf8
set tabstop=4
set autoindent
set expandtab
set hlsearch
autocmd! FileType go setlocal noexpandtab
