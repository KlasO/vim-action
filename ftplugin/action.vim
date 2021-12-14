"a ftplugin/act.vim
"setlocal commentstring=; %s
"setlocal iskeyword+=+,>,[,-,>=,],*,<,",/,<=,',&,$,%,^,!,@,=,(,<>,),#,.
"TODO:  investigate if the above setlocal statement can be used for the
"reserved keyword that are symbols
setlocal tabstop=4
setlocal softtabstop=4
"Keyboard mapping
nnoremaap <buffer> <localleader>c maI;<esc>`al
