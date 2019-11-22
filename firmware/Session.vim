let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap  <Plug>(RepeatRedo)
vnoremap  v
nnoremap  v
nnoremap a :cs find a <cword>
nnoremap i :cs find i <cfile>
nnoremap f :cs find f <cfile>
nnoremap e :cs find e <cword>
nnoremap t :cs find t <cword>
nnoremap c :cs find c <cword>
nnoremap d :cs find d <cword>
nnoremap g :cs find g <cword>
nnoremap s :cs find s <cword>
vnoremap - zvdpzvV']
nnoremap - zvddp
nmap . <Plug>(RepeatDot)
vmap ;p?=s <Plug>PyCalcAppendWithEqAndSum
vmap ;p?s <Plug>PyCalcAppendWithSum
vmap ;p?= <Plug>PyCalcAppendWithEq
vmap ;p? <Plug>PyCalcAppend
vmap ;;p?s <Plug>PyCalcReplaceWithSum
vmap ;;p? <Plug>PyCalcReplace
vmap ;v?=s <Plug>VimCalcAppendWithEqAndSum
vmap ;v?s <Plug>VimCalcAppendWithSum
vmap ;v?= <Plug>VimCalcAppendWithEq
vmap ;v? <Plug>VimCalcAppend
vmap ;;v?s <Plug>VimCalcReplaceWithSum
vmap ;;v? <Plug>VimCalcReplace
vmap ;b?=s <Plug>BcCalcAppendWithEqAndSum
vmap ;b?s <Plug>BcCalcAppendWithSum
vmap ;b?= <Plug>BcCalcAppendWithEq
vmap ;b? <Plug>BcCalcAppend
vmap ;;b?s <Plug>BcCalcReplaceWithSum
vmap ;;b? <Plug>BcCalcReplace
vmap ;?=s <Plug>AutoCalcAppendWithEqAndSum
vmap ;?s <Plug>AutoCalcAppendWithSum
vmap ;?= <Plug>AutoCalcAppendWithEq
vmap ;? <Plug>AutoCalcAppend
vmap ;;?s <Plug>AutoCalcReplaceWithSum
vmap ;;? <Plug>AutoCalcReplace
nnoremap ;pc /^[^ \t#]
nnoremap <silent> ;_ :call SpaceTo_()
vnoremap <silent> ;_ :call SpaceTo_InVisualSelection()
vnoremap <silent> ;_  :call UnderscoreToSpaceInVisualSelection()
nnoremap ;CS :call ColorschemeToggle()
nnoremap ;md :cd %:h:!/cygdrive/c/Windows/explorer.exe "$(cygpath -w -a %:r.md)"
nnoremap ;html :cd %:h:!/cygdrive/c/Windows/explorer.exe "$(cygpath -w -a %:r.html)"
nnoremap ;exd :!/cygdrive/c/Windows/explorer.exe "C:\chromation-dropbox\Dropbox\technical references\datasheets\electronics"
nnoremap ;exf :cd %:h:!/cygdrive/c/Windows/explorer.exe "$(cygpath -w -a %)"
nnoremap ;exh :cd %:h:!/cygdrive/c/Windows/explorer.exe "$(cygpath -w -a %:h)"
nnoremap ;cw ^v$h"+y:!cygpath -w "+" | clip"+pky^jP
nnoremap ;cp ^v$h"+y:!cygpath "+" | clip"+pky^jP
nnoremap ;%tr :let @" = expand("%:t:r"):echomsg 'let @"='.@"
nnoremap ;%t :let @" = expand("%:t"):echomsg 'let @"='.@"
nnoremap ;%r :let @" = expand("%:r"):echomsg 'let @"='.@"
nnoremap ;%h :let @" = expand("%:h"):echomsg 'let @"='.@"
nnoremap ;% :let @" = expand("%"):echomsg 'let @"='.@"
nnoremap ;%ph :let @" = expand("%:p:h"):echomsg 'let @"='.@"
nnoremap ;%p :let @" = expand("%:p"):echomsg 'let @"='.@"
nnoremap ;cd :cd %:h:pwd
nnoremap ;ea :exec "edit ".PATH_earhart_programmer
nnoremap ;ei :exec "edit " . PATH_2017EvalSpectrometer_inventory
nnoremap ;ep  :exec "edit ".PATH_ps_profile
nnoremap ;erv :vertical split ~/programming-reference.md:loadview
nnoremap ;ers :split ~/programming-reference.md:loadview
nnoremap ;ert :tabedit ~/programming-reference.md:loadview
nnoremap ;er  :edit ~/programming-reference.md:loadview
nnoremap ;ecv :exec "vertical split ".PATH_tasks_chromation:loadview
nnoremap ;ecs :exec "split ".PATH_tasks_chromation:loadview
nnoremap ;ect :exec "tabedit ".PATH_tasks_chromation:loadview
nnoremap ;ec  :exec "edit ".PATH_tasks_chromation:loadview
nnoremap ;env :exec "vertical split ".PATH_notes_for_update:loadview
nnoremap ;ens :exec "split ".PATH_notes_for_update:loadview
nnoremap ;ent :exec "tabedit ".PATH_notes_for_update:loadview
nnoremap ;en  :exec "edit ".PATH_notes_for_update:loadview
nnoremap ;evv :vertical split $MYVIMRCzv
nnoremap ;evs :split $MYVIMRCzv
nnoremap ;evt :tabedit $MYVIMRCzv
nnoremap ;ev  :edit $MYVIMRC
nnoremap ;sh :source $VIMRUNTIME/syntax/hitest.vim
nnoremap ;so :call SourceCurrentFile()
nnoremap ;sv :source $MYVIMRC
nnoremap ;ta /\[\ \]/e-1zv
nnoremap ;gq :call SoftWrapToggle()
nnoremap ;hw :call WhitespaceToggle()
nnoremap ;hc :call CommentToggle()
nnoremap ;trn :TabulousRename =expand("%:p:t")
nnoremap ;trh :TabulousRename =expand("%:p:h:t")
nnoremap ;tr  :call g:tabulous#renameTab()
nnoremap ;trwn :windo TabulousRename =expand("%:p:t:r")
nnoremap ;trwh :windo TabulousRename =expand("%:p:h:t")
nnoremap ;trw  :windo call g:tabulous#renameTab()
nnoremap ;n  :call nerdtree_#RefreshActiveFolder()
nmap ;nR :call RefreshNERDTreeWindow()
nmap ;nr :call nerdtree_#RefreshFolder('build')
nnoremap ;nb :NERDTreeFromBookmark 
nnoremap ;ne :NERDTree 
nnoremap <silent> ;nt :NERDTreeToggle
nnoremap ;nf :NERDTreeFind
nnoremap ;ncd :call ChangeDirectoryAndTreeToCurrentFile()
nnoremap ;di :call CleanExpandedIncludes()
nnoremap ;eol :call RemoveEolCaretM()
nnoremap ;w 
nnoremap <silent> ;-b I| A |yyP^v$gr-jyyp^v$gr-k
nnoremap <silent> ;=s I=====[ A ]=====F[w
nnoremap <silent> ;-s I---A---bb
nnoremap <silent> ;-u yyp^v$gr-k
nnoremap <silent> ;-U yyP^v$gr-j
nnoremap ;a :call InsertArithmeticResult()
nnoremap ;pwd :redir @+|pwd|redir END$"+pj:execute "left"indent(line('.')-1)
nnoremap ;cl :call BuildThisCfileWith("clang")
nnoremap ;c+ :call BuildThisCfileWith("g++")
nnoremap ;cc :call BuildThisCfileWith("gcc")
nnoremap ;co :!clang -Wall -Wextra -pedantic -c % -o %:r.o
nnoremap ;Tl :belowright vertical terminal
nnoremap ;Tj :belowright terminal
nnoremap ;Th :aboveleft vertical terminal
nnoremap ;Tk :aboveleft terminal
nnoremap ;TH :topleft vertical terminal
nnoremap ;TK :topleft terminal
nnoremap ;TL :botright vertical terminal
nnoremap ;TJ :botright terminal
nnoremap ;T  :terminal
nnoremap ;do :diffoff
nnoremap ;dt :diffthis
nnoremap ;eK :topleft split 
nnoremap ;eJ :botright split 
nnoremap ;eL :botright vertical split 
nnoremap ;eH :topleft vertical split 
nnoremap ;ek :aboveleft split 
nnoremap ;ej :belowright split 
nnoremap ;el :belowright vertical split 
nnoremap ;eh :aboveleft vertical split 
vnoremap <silent> ;gt :call VisualSelectionToTitlecase()
nnoremap <silent> ;gt :s/\w\+/\L\u\0/g:noh
nnoremap ;W  :call RemoveCharsAroundWord()
nnoremap ;x  :call RemoveCharsAroundChar()
nnoremap ;s  :call SurroundCharWithSpace()
nnoremap ;zi :call SetFoldmethodIndent()
nnoremap ;zx :call SetFoldmethodExpr()
nnoremap ;zm :call SetFoldmethodManual()
nnoremap ;FD :call FindPrevFunctionDefinition()
nnoremap ;fd :call FindNextFunctionDefinition()
nnoremap ;fs :call CopyCFuncSigToReg()
nnoremap ;[M :call GotoPrevEndOfFunction()
nnoremap ;]M :call GotoNextEndOfFunction()
nnoremap ;[m :call GotoPrevStartOfFunction()
nnoremap ;]m :call GotoNextStartOfFunction()
nnoremap ;pkg :call PackageScripts()
nnoremap ;pan :!pandoc -f markdown %:r.md -s -o %:r.html -c pandoc.css --toc --toc-depth=3
nnoremap ;4 :call BufAutoHeight()
nnoremap ;te :call CloseTestResults():call ReadTestResults()
nnoremap ;t  :cclose:call CloseTestResults()
nnoremap ;f  :cclose:call avrmake#CloseLogfileWindows()
nnoremap ;r  :cclose:call CloseExampleOutputWindows()
nnoremap ;fa :call DownloadFlash()
nnoremap ;re :call ReadOutput(expand("%:t:r"))
nnoremap ;rf :call ReadFailedOutput(expand("%:t:r"))
nnoremap ;co+ :call CompileObject("g++")
nnoremap ;col :call CompileObject("clang")
nnoremap ;coc :call CompileObject("gcc")
nnoremap ;mr+ :call MakeDefaultTargetWithGplusplusAndReadOutput(expand("%:t:r"))
nnoremap ;mrl :call MakeDefaultTargetWithClangAndReadOutput(expand("%:t:r"))
nnoremap ;mrc :call MakeDefaultTargetAndReadOutput(expand("%:t:r"), 'gcc')
nnoremap ;mfa :call BuildAndDownloadFlash()
nnoremap ;k :call TestLineBreak()
nnoremap ;mtwc+ :call CloseTestResults():make compiler=x86_64-w64-mingw32-clang++:call MakeQuickfixAndTest()
nnoremap ;mtc+ :call CloseTestResults():make compiler=clang++:call MakeQuickfixAndTest()
nnoremap ;mtwcl :call CloseTestResults():make compiler=x86_64-w64-mingw32-clang:call MakeQuickfixAndTest()
nnoremap ;mtcl :call CloseTestResults():make compiler=clang:call MakeQuickfixAndTest()
nnoremap ;mtwg+ :call CloseTestResults():make compiler=x86_64-w64-mingw32-g++:call MakeQuickfixAndTest()
nnoremap ;mtg+ :call CloseTestResults():make compiler=g++:call MakeQuickfixAndTest()
nnoremap ;mtwgc :call CloseTestResults():make compiler=x86_64-w64-mingw32-gcc:call MakeQuickfixAndTest()
nnoremap ;mtgc :call CloseTestResults():make compiler=gcc:call MakeQuickfixAndTest()
nnoremap ;mtu :call CloseTestResults():make TestUnityExtensions compiler=clang:call MakeQuickfixAndTest()
nnoremap ;mk+ :call MakeDefaultTargetWithGplusplus(expand("%:t:r"))
nnoremap ;mkl :call MakeDefaultTargetWithClang(expand("%:t:r"))
nnoremap ;mktc+ :call MakeUnittestTargetWith('clang++')
nnoremap ;mktcl :call MakeUnittestTargetWith('clang')
nnoremap ;mktg+ :call MakeUnittestTargetWith('g++')
nnoremap ;mktgc :call MakeUnittestTargetWith('gcc')
nnoremap ;mkwc+ :call MakeDefaultTargetWith('x86_64-w64-mingw32-clang++')
nnoremap ;mkc+ :call MakeDefaultTargetWith('clang++')
nnoremap ;mkwcl :call MakeDefaultTargetWith('x86_64-w64-mingw32-clang')
nnoremap ;mkcl :call MakeDefaultTargetWith('clang')
nnoremap ;mkwg+ :call MakeDefaultTargetWith('x86_64-w64-mingw32-g++')
nnoremap ;mkg+ :call MakeDefaultTargetWith('g++')
nnoremap ;mkwgc :call MakeDefaultTargetWith('x86_64-w64-mingw32-gcc')
nnoremap ;mkgc :call MakeDefaultTargetWith('gcc')
nnoremap ;mkfgc :call MakeDefaultTargetForFileStemWith('gcc')
nnoremap ;mkv :make display_target_voltage
nnoremap ;mkp :make test_programmer_is_connected
nnoremap ;mna :make avr-target compiler=avr-gcc -n
nnoremap ;mka :call CloseTestResults():make avr-target compiler=avr-gcc:call MakeQuickfix()
nnoremap ;mkf :make compiler=fake -n unit-test
nnoremap ;mca :call MakeCleanAllBuilds()
nnoremap ;mC :call CloseTestResults():make clean-test-and-lib-builds:call MakeQuickfix()
nnoremap ;mct :call MakeCleanTestSuite()
nnoremap ;ve :call ExampleCheckingIfBuildFailed()
nnoremap ;yy :call AddTest()
nnoremap ;hg :call AddIfndefGuardsInHeader()
nnoremap ;yh :call expectmocking#AddFuncDeclToHeader(add_silently)
nnoremap ;yt :call AddTestToHeaderAndRunner()
nnoremap ;ys :call AddStubToMockAndTest()
nnoremap ;me :call MockExpectedCall()
nnoremap ;edh :call expectmocking#AddExternDeclToHeader(add_silently)
nnoremap ;fh :call expectmocking#AddFuncDeclToHeader(add_silently)
nnoremap ;ym :call YankIntoMock()
nnoremap ;ck :call RemoveCscopeDatabase()
nnoremap ;cb :call CreateCscopeDatabase()
nnoremap ;cu :call UpdateTagsAndCscope()
nnoremap ;cU :call ctags#UpdateLibTags()
nnoremap ;cs :call ctags#Update():call CscopeCreateConnection()
nnoremap ;cfpy :!find . -name '*.py' > cscope.files
nnoremap ;tp :!ctags -R --languages=python
nnoremap ;rs :silent redraw!
nnoremap ;rh :syntax sync fromstart
nnoremap ;opt :call OmniPreviewToggle()
nnoremap <silent> ;hh :execute 'match Search /\%'.line('.').'l/'mh
nnoremap <silent> ;h  :match
nnoremap ;  :noh
nnoremap ;H :set hlsearch
nnoremap ;ms  :call WriteThisSession()
nnoremap ;ms? :echo "This session: " . v:this_session
nnoremap ;ls :source ~/sessions/
nnoremap ;mv :mkview
nnoremap ;lv :loadview
nnoremap ;xdc :call DocstringFromCTests()
nnoremap ;xcsv :call CsvToVimTable()
nnoremap <silent> ;WR :call ColorWipRip()
nnoremap ;gl  :call GitLogInVim('')
nnoremap ;glw :call GitLogInVim('WIP')
nnoremap ;gl: :!git log --pretty=format:"- \%ci \%>(15)\%ar \%s" | grep --color ""
nnoremap ;Gh :!git log | grep commit -m 1 | perl -pe 's/commit //;' | perl -pe 's/\n//;' | clip:echomsg "Latest git commit: ".@+.". Paste from Vim register '+'."
nnoremap ;Gl :!git log --decorate --graph --pretty=format:"- \%C(yellow)\%ci \%C(blue)\%>(15)\%ar \%C(reset)\%s" 
nnoremap ;Gb :!git branch 
nnoremap ;GR :!git rebase -i HEAD~
nnoremap ;Gr :!git remote -v
nnoremap ;Gca :!git commit --amend
nnoremap ;Gcm :!git commit -m 
nnoremap ;GcM :!git commit
nnoremap ;Gw :!git add %
nnoremap ;Ga :!git add .
nnoremap ;Gd :!git diff 
nnoremap ;Gs :!git status 
nnoremap ;G: :!git 
nnoremap ;gr :!grep "inline" --color -rn . --include=*.[ch]
nnoremap ;ro :set readonly
nnoremap ;, ;
xmap S <Plug>VSurround
nmap U <Plug>(RepeatUndoLine)
nnoremap Y y$
vnoremap _ zvdkPzvV']
nnoremap _ zvddkP
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> gcs :call SurroundWithEqAndSqBrackThenComment()
nnoremap gL :call GitLogWithTimesToFile()
nnoremap gl :call GitLogWithTimesToConsole()
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
vnoremap scp "sy:%s/\<"\>//nc
vnoremap sc  "sy:%s/"//nc
vnoremap sp "sy/\<"\>zv
vnoremap s  "sy/"zv
nmap u <Plug>(RepeatUndo)
vnoremap v 
nnoremap v 
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>(RepeatRedo) :call repeat#wrap("\<C-R>",v:count)
nnoremap <silent> <Plug>(RepeatUndoLine) :call repeat#wrap('U',v:count)
nnoremap <silent> <Plug>(RepeatUndo) :call repeat#wrap('u',v:count)
nnoremap <silent> <Plug>(RepeatDot) :exe repeat#run(v:count)
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
vnoremap <silent> <Plug>PyCalcAppendWithEqAndSum :call HowMuch#HowMuch(1,1,1,'py')
vnoremap <silent> <Plug>PyCalcAppendWithSum :call HowMuch#HowMuch(1,0,1,'py')
vnoremap <silent> <Plug>PyCalcAppendWithEq :call HowMuch#HowMuch(1,1,0,'py')
vnoremap <silent> <Plug>PyCalcAppend :call HowMuch#HowMuch(1,0,0,'py')
vnoremap <silent> <Plug>PyCalcReplaceWithSum :call HowMuch#HowMuch(0,0,1,'py')
vnoremap <silent> <Plug>PyCalcReplace :call HowMuch#HowMuch(0,0,0,'py')
vnoremap <silent> <Plug>VimCalcAppendWithEqAndSum :call HowMuch#HowMuch(1,1,1,'vim')
vnoremap <silent> <Plug>VimCalcAppendWithSum :call HowMuch#HowMuch(1,0,1,'vim')
vnoremap <silent> <Plug>VimCalcAppendWithEq :call HowMuch#HowMuch(1,1,0,'vim')
vnoremap <silent> <Plug>VimCalcAppend :call HowMuch#HowMuch(1,0,0,'vim')
vnoremap <silent> <Plug>VimCalcReplaceWithSum :call HowMuch#HowMuch(0,0,1,'vim')
vnoremap <silent> <Plug>VimCalcReplace :call HowMuch#HowMuch(0,0,0,'vim')
vnoremap <silent> <Plug>BcCalcAppendWithEqAndSum :call HowMuch#HowMuch(1,1,1,'bc')
vnoremap <silent> <Plug>BcCalcAppendWithSum :call HowMuch#HowMuch(1,0,1,'bc')
vnoremap <silent> <Plug>BcCalcAppendWithEq :call HowMuch#HowMuch(1,1,0,'bc')
vnoremap <silent> <Plug>BcCalcAppend :call HowMuch#HowMuch(1,0,0,'bc')
vnoremap <silent> <Plug>BcCalcReplaceWithSum :call HowMuch#HowMuch(0,0,1,'bc')
vnoremap <silent> <Plug>BcCalcReplace :call HowMuch#HowMuch(0,0,0,'bc')
vnoremap <silent> <Plug>AutoCalcAppendWithEqAndSum :call HowMuch#HowMuch(1,1,1,'auto')
vnoremap <silent> <Plug>AutoCalcAppendWithSum :call HowMuch#HowMuch(1,0,1,'auto')
vnoremap <silent> <Plug>AutoCalcAppendWithEq :call HowMuch#HowMuch(1,1,0,'auto')
vnoremap <silent> <Plug>AutoCalcAppend :call HowMuch#HowMuch(1,0,0,'auto')
vnoremap <silent> <Plug>AutoCalcReplaceWithSum :call HowMuch#HowMuch(0,0,1,'auto')
vnoremap <silent> <Plug>AutoCalcReplace :call HowMuch#HowMuch(0,0,0,'auto')
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <BS> :call SpecialBufferToggle()
nnoremap <C-Down> :wincmd+
nnoremap <C-Up> :wincmd-
nnoremap <C-Left> :wincmd<
nnoremap <C-Right> :wincmd>
vnoremap <M-Down> :call LeftAlignWithBelow()
nnoremap <M-Down> :execute "left ".expand(indent(line('.')+1))
vnoremap <M-Up> :call LeftAlignWithAbove()
nnoremap <M-Up> :execute "left ".expand(indent(line('.')-1))
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
nnoremap ¿ :cpreviouszv
nnoremap ¯ :cnextzv
nnoremap ò 
nnoremap ë :call NextNonCommentLineOfC('k')
nnoremap ê :call NextNonCommentLineOfC('j')
cnoremap jk 
inoremap jk 
iabbr mmm TEST_ASSERT_TRUE_MESSAGE(<BS>RanAsHoped(mock),           // If this is false,WhyDidItFail(mock)          // print this message.);
iabbr ttt TEST_FAIL_MESSAGE("Implement test.");
iabbr ppp #!/usr/bin/env python3# -*- coding: utf-8 -*-
let &cpo=s:cpo_save
unlet s:cpo_save
set keymap=symbols
set autoindent
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set completeopt=menuone,preview
set cscopeprg=/usr/bin/cscope
set cscopequickfix=s-,d-,c-,t-,e-,i-,a-
set cscopeverbose
set display=truncate
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set hlsearch
set ignorecase
set incsearch
set nojoinspaces
set langnoremap
set nolangremap
set laststatus=2
set listchars=tab:>-,trail:·,space:·
set nrformats=bin,hex
set operatorfunc=<SNR>49_go
set path=.,/usr/include,,,./**,/usr/include/glib-2.0,/cygdrive/c/chromation-dropbox/Dropbox/c/TddFramework/mock-c/include,/cygdrive/c/chromation-dropbox/Dropbox/c/TddFramework/mock-c/test,/cygdrive/c/chromation-dropbox/Dropbox/c/TddFramework/mock-c/test/unity,/cygdrive/c/Program\\\ Files\\\ (x86)/Atmel/Studio/7.0/toolchain/avr8/avr8-gnu-toolchain/avr/include,/usr/lib/clang/5.0.1/include,/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include,/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++,/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/tr1,/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin,~/.local/lib/python3.6/site-packages,/usr/lib/python3.7/,/usr/lib/python3.7/site-packages/
set previewheight=6
set ruler
set runtimepath=~/.vim,~/.vim/pack/bundle/start/vim-surround,~/.vim/pack/bundle/start/vim-repeat,~/.vim/pack/bundle/start/vim-markdown,~/.vim/pack/bundle/start/vim-easy-align,~/.vim/pack/bundle/start/vim-commentary,~/.vim/pack/bundle/start/tabulous,~/.vim/pack/bundle/start/nerdtree,~/.vim/pack/bundle/start/HowMuch,~/.vim/pack/bundle/start/echodoc.vim,~/.vim/pack/bundle/start/deol.nvim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/pack/bundle/dev
set shell=bash
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set softtabstop=4
set splitright
set synmaxcol=160
set tabline=%!Tabulous()
set tabstop=4
set tags=./tags,tags,lib-tags,/cygdrive/c/chromation-dropbox/Dropbox/c/TddFramework/mock-c/tags
set textwidth=80
set notimeout
set title
set ttimeout
set ttimeoutlen=0
set undofile
set wildignore=*.pyc
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/mBrd
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabnew
tabrewind
edit src/mBrd.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 114 + 95) / 191)
exe '2resize ' . ((&lines * 10 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 76 + 95) / 191)
exe '3resize ' . ((&lines * 10 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 76 + 95) / 191)
exe '4resize ' . ((&lines * 20 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 114 + 95) / 191)
exe '5resize ' . ((&lines * 3 + 23) / 46)
exe 'vert 5resize ' . ((&columns * 76 + 95) / 191)
exe '6resize ' . ((&lines * 1 + 23) / 46)
exe 'vert 6resize ' . ((&columns * 76 + 95) / 191)
exe '7resize ' . ((&lines * 14 + 23) / 46)
exe 'vert 7resize ' . ((&columns * 76 + 95) / 191)
argglobal
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
567
normal! zo
797
normal! zo
let s:l = 570 - ((25 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
570
normal! 09|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
232
normal! zo
240
normal! zo
243
normal! zo
255
normal! zo
260
normal! zo
297
normal! zo
300
normal! zo
311
normal! zo
322
normal! zo
381
normal! zo
440
normal! zo
447
normal! zo
454
normal! zo
461
normal! zo
468
normal! zo
let s:l = 230 - ((69 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
230
normal! 013|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
232
normal! zo
240
normal! zo
243
normal! zo
255
normal! zo
260
normal! zo
297
normal! zo
300
normal! zo
311
normal! zo
322
normal! zo
381
normal! zo
440
normal! zo
447
normal! zo
454
normal! zo
461
normal! zo
468
normal! zo
let s:l = 288 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
288
normal! 09|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-old-working.lst") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-old-working.lst | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-old-working.lst | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'asm'
setlocal filetype=asm
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'asm'
setlocal syntax=asm
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 67 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 016|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'asm'
setlocal filetype=asm
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'asm'
setlocal syntax=asm
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 8 - ((0 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 055|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'asm'
setlocal filetype=asm
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'asm'
setlocal syntax=asm
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 52 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 012|
wincmd w
argglobal
enew
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=quickfix
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%t%{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 114 + 95) / 191)
exe '2resize ' . ((&lines * 10 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 76 + 95) / 191)
exe '3resize ' . ((&lines * 10 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 76 + 95) / 191)
exe '4resize ' . ((&lines * 20 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 114 + 95) / 191)
exe '5resize ' . ((&lines * 3 + 23) / 46)
exe 'vert 5resize ' . ((&columns * 76 + 95) / 191)
exe '6resize ' . ((&lines * 1 + 23) / 46)
exe 'vert 6resize ' . ((&columns * 76 + 95) / 191)
exe '7resize ' . ((&lines * 14 + 23) / 46)
exe 'vert 7resize ' . ((&columns * 76 + 95) / 191)
tabnext
edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_runner.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 95 + 95) / 191)
exe '2resize ' . ((&lines * 20 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
exe '3resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 95 + 95) / 191)
exe '4resize ' . ((&lines * 11 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 95 + 95) / 191)
argglobal
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
82
normal! zo
102
normal! zo
179
normal! zo
181
normal! zo
188
normal! zo
let s:l = 203 - ((14 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
203
normal! 02|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_SensorVis.c") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_SensorVis.c | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_SensorVis.c | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
874
normal! zo
884
normal! zo
890
normal! zo
894
normal! zo
899
normal! zo
909
normal! zo
1040
normal! zo
let s:l = 871 - ((57 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
871
normal! 016|
wincmd w
argglobal
if bufexists("~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c") | buffer ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | else | edit ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
84
normal! zo
88
normal! zo
232
normal! zo
240
normal! zo
255
normal! zo
297
normal! zo
300
normal! zo
381
normal! zo
440
normal! zo
447
normal! zo
454
normal! zo
461
normal! zo
468
normal! zo
381
normal! zc
477
normal! zo
let s:l = 254 - ((5 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
254
normal! 0
wincmd w
argglobal
enew
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=quickfix
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%t%{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=160
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 95 + 95) / 191)
exe '2resize ' . ((&lines * 20 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
exe '3resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 95 + 95) / 191)
exe '4resize ' . ((&lines * 11 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 95 + 95) / 191)
tabnext
edit ~/chromation/dev-kit-mike/README.md
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 23) / 46)
exe '2resize ' . ((&lines * 21 + 23) / 46)
argglobal
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=MarkdownFold()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MarkdownFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
3800
normal! zo
3833
normal! zo
let s:l = 3858 - ((16 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3858
normal! 0
wincmd w
argglobal
if bufexists("/cygdrive/c/Users/Mike/Documents/chromation/txt/updates/notes-for-update/notes_for_update.md") | buffer /cygdrive/c/Users/Mike/Documents/chromation/txt/updates/notes-for-update/notes_for_update.md | else | edit /cygdrive/c/Users/Mike/Documents/chromation/txt/updates/notes-for-update/notes_for_update.md | endif
lnoremap <buffer> ALPHA Α
lnoremap <buffer> BETA Β
lnoremap <buffer> CHI Χ
lnoremap <buffer> Dhh ┅
lnoremap <buffer> Dhv ┇
lnoremap <buffer> Dlh ┄
lnoremap <buffer> Dlv ┆
lnoremap <buffer> DELTA Δ
lnoremap <buffer> ETA Η
lnoremap <buffer> EPSILON Ε
lnoremap <buffer> GAMMA Γ
lnoremap <buffer> PHI Φ
lnoremap <buffer> RHO Ρ
lnoremap <buffer> THETA Θ
lnoremap <buffer> ZETA Ζ
lnoremap <buffer> aumlaut ä
lnoremap <buffer> alpha α
lnoremap <buffer> a4 à
lnoremap <buffer> a3 ǎ
lnoremap <buffer> a2 á
lnoremap <buffer> a1 ā
lnoremap <buffer> bvv │
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> bhh ─
lnoremap <buffer> bul ┘
lnoremap <buffer> bur └
lnoremap <buffer> bdl ┐
lnoremap <buffer> bdr ┌
lnoremap <buffer> beta β
lnoremap <buffer> chi χ
lnoremap <buffer> dul ┛
lnoremap <buffer> dur ┗
lnoremap <buffer> ddl ┓
lnoremap <buffer> ddr ┏
lnoremap <buffer> dhh ┉
lnoremap <buffer> dhv ┋
lnoremap <buffer> dlh ┈
lnoremap <buffer> dlv ┊
lnoremap <buffer> dac ▾
lnoremap <buffer> dae ▸
lnoremap <buffer> delta δ
lnoremap <buffer> deg °
lnoremap <buffer> eumlaut ë
lnoremap <buffer> eta η
lnoremap <buffer> epsilon ε
lnoremap <buffer> e4 è
lnoremap <buffer> e3 ě
lnoremap <buffer> e2 é
lnoremap <buffer> e1 ē
lnoremap <buffer> geq ≥
lnoremap <buffer> gamma γ
lnoremap <buffer> iumlaut ï
lnoremap <buffer> i4 ì
lnoremap <buffer> i3 ǐ
lnoremap <buffer> i2 í
lnoremap <buffer> i1 ī
lnoremap <buffer> lar ←
lnoremap <buffer> leq ≤
lnoremap <buffer> lambda λ
lnoremap <buffer> mu µ
lnoremap <buffer> oumlaut ö
lnoremap <buffer> ohm Ω
lnoremap <buffer> o4 ò
lnoremap <buffer> o3 ǒ
lnoremap <buffer> o2 ó
lnoremap <buffer> o1 ō
lnoremap <buffer> pm ±
lnoremap <buffer> phi ϕ
lnoremap <buffer> rho ρ
lnoremap <buffer> theta θ
lnoremap <buffer> uumlaut ü
lnoremap <buffer> u4 ù
lnoremap <buffer> u3 ǔ
lnoremap <buffer> u2 ú
lnoremap <buffer> u1 ū
lnoremap <buffer> zeta ζ
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=symbols
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=MarkdownFold()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MarkdownFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=160
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
37
normal! zo
3600
normal! zo
4390
normal! zo
4485
normal! zo
4490
normal! zo
4768
normal! zo
4880
normal! zo
5070
normal! zo
5071
normal! zo
5085
normal! zo
5385
normal! zo
5429
normal! zo
5461
normal! zo
5463
normal! zo
5954
normal! zo
5954
normal! zc
5968
normal! zo
5968
normal! zc
6052
normal! zo
6052
normal! zc
6160
normal! zo
6166
normal! zo
6254
normal! zo
6255
normal! zo
6261
normal! zo
6264
normal! zo
6269
normal! zo
6298
normal! zo
6299
normal! zo
6306
normal! zo
6308
normal! zo
6328
normal! zo
7028
normal! zo
7087
normal! zo
7188
normal! zo
7209
normal! zo
7212
normal! zo
7215
normal! zo
let s:l = 7208 - ((6 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7208
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 20 + 23) / 46)
exe '2resize ' . ((&lines * 21 + 23) / 46)
tabnext 3
set stal=1
badd +138 src/mBrd.c
badd +1286 ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_SensorVis.c
badd +1 ~/chromation/dev-kit-mike/README.md
badd +1 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.c
badd +1 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-old-working.lst
badd +1 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/lis-config-new-broken.lst
badd +7054 /cygdrive/c/Users/Mike/Documents/chromation/txt/updates/notes-for-update/notes_for_update.md
badd +45 /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/lib/src/Lis.c
badd +963 ~/chromation/dev-kit-mike/firmware/vis-spi-out/build/vis-spi-out.lst
badd +7 ~/chromation/dev-kit-mike/firmware/lib/src/Lis.c
badd +884 build/mBrd.lst
badd +1 ~/.vimrc
badd +46 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/vis-spi-out.c
badd +30 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/UartSpi-Hardware.h
badd +153 ~/chromation/dev-kit-mike/firmware/lib/src/UartSpi.c
badd +743 /cygdrive/c/Program\ Files\ (x86)/Atmel/Studio/7.0/toolchain/avr8/avr8-gnu-toolchain/avr/include/avr/iom328p.h
badd +10 /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/lib/src/ReadWriteBits.h
badd +1 ~/chromation/dev-kit-mike/firmware/vis-spi-out/build/vis-spi-out.elf
badd +2091 ~/chromation/dev-kit-mike/firmware/usb-bridge/build/usb-bridge.lst
badd +89 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/SensorVis.h
badd +47 ~/chromation/dev-kit-mike/firmware/lib/src/Pwm.c
badd +27 ~/chromation/dev-kit-mike/firmware/lib/test/fake/Lis-Hardware.h
badd +41 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/Lis-Hardware.h
badd +2 /cygdrive/c/Program\ Files\ (x86)/Atmel/Studio/7.0/toolchain/avr8/avr8-gnu-toolchain/avr/include/avr/io.h
badd +21 /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/lib/src/Lis.h
badd +6 ~/chromation/dev-kit-mike/firmware/lib/src/ReadWriteBits.c
badd +63 ~/chromation/dev-kit-mike/firmware/lib/src/BiColorLed.h
badd +142 ~/chromation/dev-kit-mike/firmware/lib/src/Ft1248.c
badd +32 ~/chromation/dev-kit-mike/firmware/lib/src/ReadWriteBits.h
badd +1 In\ file\ included\ from\ ../lib/src/ReadWriteBits.c
badd +50 ~/chromation/dev-kit-mike/firmware/lib/src/Lis.h
badd +1 In\ file\ included\ from\ src/vis-spi-out.c
badd +6 ~/chromation/dev-kit-mike/firmware/lib/src/deprecated/ReadWriteBits.c
badd +36 ~/chromation/dev-kit-mike/firmware/lib/src/deprecated/ReadWriteBits.h
badd +11 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/deprecated/UartSpi-initial.c
badd +147 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/deprecated/old-vis-spi-out.c
badd +1 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/deprecated/Spi-Commands.h
badd +28 ~/chromation/dev-kit-mike/firmware/lib/src/UartSpi.h
badd +42 src/Lis-Hardware.h
badd +33 src/UartSpi-Hardware.h
badd +55 ~/chromation/dev-kit-mike/firmware/lib/test/test_Auto.c
badd +40 src/Spi-Commands.h
badd +1 src/Spi-Hardware.h
badd +1 src/Pwm-Hardware.h
badd +31 /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/lib/src/UartSpi.h
badd +4 ~/chromation-reference.md
badd +2 /cygdrive/c/chromation-dropbox/Dropbox/labview\ programs/LabVIEW\ 2012/2018/LisSweep/map-files/maps/0911-27_map.txt
badd +97 ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_runner.c
badd +260 ~/chromation/dev-kit-mike/firmware/lib/test/test_UartSpi.c
badd +476 ~/chromation/dev-kit-mike/firmware/usb-bridge/src/bridge.c
badd +19 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/deprecated/old-peak-counts-algorithm.c
badd +99 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/LisReadOnePixel-remove-global-pframe.c
badd +148 ~/chromation/dev-kit-mike/firmware/lib/test/test_Spi.c
badd +86 ~/chromation/dev-kit-mike/firmware/lib/src/Spi.c
badd +52 ~/chromation/dev-kit-mike/firmware/lib/src/Spi.h
badd +333 ~/chromation/dev-kit-mike/firmware/lib/test/test_runner.c
badd +665 /cygdrive/c/chromation-dropbox/Dropbox/c/TddFramework/mock-c/test/unity/unity_internals.h
badd +1 ~/chromation/dev-kit-mike/firmware/lib/make:\ \*\*\*\ \[Makefile
badd +60 ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/test_SensorVis.h
badd +36 ~/chromation/dev-kit-mike/firmware/lib/test/test_Lis.c
badd +1 ~/chromation/dev-kit-mike/firmware/lib/build/TestSuite-results.md
badd +22 ~/chromation/dev-kit-mike/firmware/vis-spi-out/src/bad-embedded-c-ProgramPhotodiodeArray.c
badd +22 ~/chromation/dev-kit-mike/firmware/vis-spi-out/test/deprecated_tests_for_RepresentConfigAs28bits.c
badd +0 /cygdrive/c/chromation-dropbox/Dropbox/labview\ programs/LabVIEW\ 2012/2018/LisSweep/map-files/maps/1002-06_map.txt
badd +7 /cygdrive/c/chromation-dropbox/Dropbox/python/serial_number_project/example.py
badd +291 ~/.bashrc
badd +13 /cygdrive/c/chromation-dropbox/Dropbox/c/LIS-770i/readme-flash.md
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
