let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/gdrive/nhanes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +115 9-cap-nhanes.Rmd
badd +1 kod/get_modelstats.R
badd +44 3-clean-complete-cases.R
badd +9 2-join-complete-cases.R
badd +8 citations.R
badd +666 term://.//19160:R\ 
badd +25 bibliography.bib
badd +18 7-analyze-modeling-runs2.R
badd +12 6-model-third-run.R
badd +258 7-analyze-modeling-runs.R
badd +4 tmp.R
argglobal
silent! argdel *
$argadd 9-cap-nhanes.Rmd
set splitbelow splitright
set nosplitbelow
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
if bufexists('term://.//19160:R\ ') | buffer term://.//19160:R\  | else | edit term://.//19160:R\  | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3620 - ((37 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3620
normal! 0
lcd ~/gdrive/nhanes
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
