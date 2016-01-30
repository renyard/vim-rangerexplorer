" Compatible with ranger 1.4.2 through 1.7.*
"
" Based on the example in the ranger source:
" https://github.com/hut/ranger/blob/58fd4d933c5b7161ad793998b563ccbb69a4daf5/examples/vim_file_chooser.vim

function! rangerexplorer#rangechooser()
    let temp = tempname()

    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
