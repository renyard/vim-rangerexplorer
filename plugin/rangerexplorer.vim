" =============================================================================
" " File:          plugin/rangerexplorer.vim
" " Description:   Use the ranger file manager as a file chooser in Vim
" " Author:        Ian Renyard <http://www.renyard.co.uk>
" =============================================================================

function! RangerExplorer()
    " Check that ranger is installed.
    let l:ranger = executable("ranger")
    echo l:ranger

    if l:ranger
        call rangerexplorer#rangechooser()
    else
        " ranger not found, fallback to netrw.
        edit .
    endif
endfunction

command! -bar RangerExplorer call RangerExplorer()
