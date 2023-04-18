" LilyPond filetype plugin
" Language:     LilyPond (ft=ly)
"
" Installed As:	vim/ftplugin/lilypond.vim
" Uses Generated File:	vim/syntax/lilypond-words.vim
"
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

setlocal autoindent
setlocal shiftwidth=2

" some handy key mappings

"map <buffer> <C-m> :w<Return>:make<Return><Return><Return>
"map <buffer> <C-m> :w<Return>:setl makeprg=lilypond\ \"%<\"<Return>:make<Return>
"map <buffer> <C-p> :!zathura "%<.pdf" 2>/dev/null &<Return><Return>

"map <C-d> :w<Return>:make duos<Return><Return><Return>
"map <C-e> :w<Return>:make ensembles<Return><Return><Return>
"map <C-o> :w<Return>:make orgues<Return><Return><Return>
"map <C-a> :w<Return>:make solos<Return><Return><Return>
"map <C-c> :w<Return>:make vocals<Return><Return><Return>

" <F4>  save & make and play midi with timidity
" map <buffer> <F4> :w<Return>:setl makeprg=lilypond\ \"%<\"<Return>:make<Return>:!timidity "%<.midi"<Return>
map <buffer> <C-a> :w<Return>:!timidity -in midi/%:t:r.midi<Return>

" save & make (lilypond)
map <buffer> <C-l> :w<Return>:setl makeprg=lilypond\ \"%<\"<Return>:make<Return>

" save & make (makefile)
map <buffer> <C-m> :w<Return>:setl makeprg=make\ -k<Return>:make<Return>

" view pdf with zathura
map <buffer> <C-p> :!zathura "%<.pdf" 2>/dev/null &<Return><Return>

" <F7>  prev error
map <buffer> <F7> :cp<Return>

" <F8>  next error
map <buffer> <F8> :cn<Return>

" <F10> menu
source $VIMRUNTIME/menu.vim
setlocal wildmenu
setlocal cpo-=<
setlocal wcm=<C-Z>
map <buffer> <F10> :emenu <C-Z>

" <F12> comment region
map <buffer> <F12> :g!/%.*/normal 0i%<Return>

" <S-F12> remove comments in region
map <buffer> <S-F12> :g/%.*/normal 0x<Return>

" Completions in Insert/Replace-mode with <Ctrl-N>
setlocal dictionary-=$VIM/syntax/lilypond-words dictionary+=$VIM/syntax/lilypond-words
setlocal complete-=k complete+=k

setlocal showmatch
