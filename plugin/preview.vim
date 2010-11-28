" ============================================================================
" File:        preview.vim
" Description: Vim global plugin to preview markup files(markdown,rdoc,textile)
" Author:      Sergey Potapov (aka Blake) <blake131313 AT gmail DOT com>
" Version:     0.1
" Homepage:    http://github.com/greyblake/vim-preview
" License:     GPLv2+ -- look it up.
" Copyright:   Copyright (C) 2010 Sergey Potapov (aka Blake)
"
"              This program is free software; you can redistribute it and/or
"              modify it under the terms of the GNU General Public License as
"              published by the Free Software Foundation; either version 2 of
"              the License, or (at your option) any later version.
"
"              This program is distributed in the hope that it will be useful,
"              but WITHOUT ANY WARRANTY; without even the implied warranty of
"              MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
"              General Public License for more details.
"
"              You should have received a copy of the GNU General Public License
"              along with this program; if not, write to the Free Software
"              Foundation, Inc., 59 Temple Place, Suite 330, Boston,
"              MA 02111-1307 USA
" ============================================================================


function! s:Preview()
    if has('ruby')
        call preview#show()
    else
        echo 'To use Preview plugin you should compile vim with --enable-rubyinterp option'
    endif
endfunction

" Commands
command! Preview call s:Preview()

" Default options
let g:PreviewBrowsers = 'firefox,safari,epiphany,google-chrome,opera'
let g:PreviewCSSPath  = ''

" Default mapping
:nmap <Leader>P :Preview<CR>
