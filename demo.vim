" Source me :)
colorscheme wwdc17
silent tabnew
insert

 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●

.

for col in g:terminal_ansi_colors
  call append('$', col . ' '
        \ . repeat(col == '#fafafa' ? ' ' : '▇', 60)
        \ . ' rgb(' . join(colortemplate#colorspace#hex2rgb(col), ', ')  . ')')
endfor

for i in range(2,11)
  for j in range(2,21)
    let k = abs(float2nr(pow(i,j)) % 17) " Incredibly clever pseudo-random generator ;)
    execute 'syn match WWDC17Demo'.k '/\%(\%'.i.'l\%'.j.'v\)./'
  endfor
endfor

for i in range(13,13+14)
  execute 'syn match WWDC17Demo'.(i-13) '/\%'.i.'l.*/'
endfor
syn match WWDC17Demo0 /\%28l.*/

hi WWDC17Demo0 ctermfg=59 ctermbg=NONE guifg=#5f5f61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo1 ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo2 ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo3 ctermfg=178 ctermbg=NONE guifg=#e1ad0b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo4 ctermfg=31 ctermbg=NONE guifg=#4a8091 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo5 ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo6 ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo7 ctermfg=255 ctermbg=NONE guifg=#f0f0f0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo8 ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo9 ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo10 ctermfg=143 ctermbg=NONE guifg=#abb96e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo11 ctermfg=178 ctermbg=NONE guifg=#ebb822 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo12 ctermfg=97 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo13 ctermfg=197 ctermbg=NONE guifg=#eb314b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo14 ctermfg=38 ctermbg=NONE guifg=#23bce1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo15 ctermfg=231 ctermbg=NONE guifg=#fafafa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo16 ctermfg=31 ctermbg=NONE guifg=#4a8091 guibg=NONE guisp=NONE cterm=NONE gui=NONE

