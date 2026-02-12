" Set global shortcut in Visual Studio options:
"     Window.ActivateDocumentWindow => Esc
" External tool to open new Vim at current line:
"     gvim.exe $(ItemPath) +$(CurLine)
" External tool to open in Vim server:
"     gvim.exe --servername vsvim --remote-silent $(ItemPath)
"

set clipboard=unnamed
set ignorecase
set smartcase
set incsearch
set backspace=eol,start,indent
set hlsearch
set expandtab
set ttimeout
set ttimeoutlen=50

nnoremap gh ^

inoremap z,  <c-o>
inoremap z,p <c-r>" 
" save and format
nnoremap z. :vsc Edit.FormatDocument<cr>:w<cr>

" exit insert mode -->
inoremap jk <Esc> 
inoremap JK <Esc>

" go back
nnoremap gb :vsc View.NavigateBackward<cr>
nnoremap gf :vsc View.NavigateForward<cr>

nnoremap <space> :vsc Edit.GoToFile<cr>

nnoremap rn :vsc Refactor.Rename<cr>

" build "
nnoremap sb :vsc Build.BuildSolution<cr>
nnoremap sc :vsc Build.BuildCleanSolution<cr>
nnoremap run :vsc Debug.StartWithoutDebugging<cr>
nnoremap dbg :vsc Debug.Start<cr>

" delete all and copy all
nnoremap dae ggVGd:w<cr>
nnoremap yae ggVGy<cr>


nnoremap gwo :vsc FullScreen<cr>
nnoremap gc :vsc Window.CloseDocumentWindow<cr>
nnoremap gl :vsc Window.NextDocumentWindow<cr>
nnoremap gh :vsc Window.PreviousDocumentWindow<cr>

nnoremap <S-l> $
nnoremap <S-h> _


nnoremap gso :vsc View.Output<cr>
nnoremap gse :vsc View.ErrorList<cr>
nnoremap gwh :vsc EditorContextMenus.CodeWindow.ToggleHeaderCodeFile<cr>


nnoremap <c-d> <PageDown>
nnoremap <c-u> <PageUp>


nnoremap vd "_d
xnoremap x  "_d
nnoremap vD "_D
xnoremap P  "0p
nnoremap =p o<esc>p==
nnoremap =P O<esc>p==
xnoremap Y "+y

nnoremap <c-l> :nohlsearch<cr>
xnoremap - $
nnoremap - $

nnoremap <c-n> n.
nnoremap Q @@

nnoremap ]e :m+1<cr>
nnoremap [e :m-2<cr>j
xnoremap ]e :m'>+1<cr>gv
xnoremap [e :m'<-2<cr>jgv

nnoremap Y y$

nnoremap <c-o> :vsc View.NavigateBackward<cr>
nnoremap <c-i> :vsc View.NavigateForward<cr>
xnoremap gC :vsc Edit.CommentSelection<cr>



nnoremap gr :vsc Edit.FindAllReferences<cr>
" go to the type of the current symbol
nnoremap gi :vsc Edit.GoToImplementation<cr>
nnoremap gd    :vsc Edit.GoToDefinition<cr>
" grep everything
nnoremap g// :vsc Edit.FindinFiles<cr>
" find/replace in current buffer
nnoremap g/r :vsc Edit.Replace<cr>

nnoremap K     :vsc Edit.QuickInfo<cr>
nnoremap gk    :vsc Edit.PeekDefinition<cr>

"show refactor menu
nnoremap cri        :vsc EditorContextMenus.CodeWindow.OrganizeUsings.RemoveAndSort<cr>
"show quickfix menu
nnoremap <bs> :vsc EditorContextMenus.CodeWindow.QuickActionsForPosition<cr>
xnoremap <bs> :vsc EditorContextMenus.CodeWindow.QuickActionsForPosition<cr>

" expression manipulation
nnoremap gst :vsc Edit.WordTranspose<cr>
" nnoremap gsh :vsc ReSharper.ReSharper_MoveLeft<cr>
nnoremap gsl :vsc ReSharper.ReSharper_MoveRight<cr>
nnoremap gsk :vsc ReSharper.ReSharper_MoveUp<cr>
nnoremap gsj :vsc ReSharper.ReSharper_MoveDown<cr> -->

" evaluate F#
" xnoremap <enter>  :vsc EditorContextMenus.CodeWindow.ExecuteInInteractive<cr>
" nnoremap yxx      ggVG:vsc EditorContextMenus.CodeWindow.ExecuteInInteractive<cr>
" nnoremap <enter>  :vsc EditorContextMenus.CodeWindow.ExecuteLineInInteractive<cr> -->

nnoremap ]q :vsc Edit.GoToNextLocation<cr>
nnoremap [q :vsc Edit.GoToPrevLocation<cr>
nnoremap ]l  :vsc Edit.NextHighlightedReference<cr>
nnoremap [l  :vsc Edit.PreviousHighlightedReference<cr>


nnoremap <insert> :vsc Debug.ToggleBreakpoint<cr>
nnoremap [o<insert> :vsc Debug.EnableAllBreakpoints<cr>
nnoremap ]o<insert> :vsc Debug.DisableAllBreakpoints<cr>
nnoremap da<insert> :vsc Debug.DeleteAllBreakpoints<cr>

nnoremap @T :vsc TestExplorer.RepeatLastRun<cr>

nnoremap q; :vsc View.C#Interactive<cr>
nnoremap q: :vsc View.CommandWindow<cr>
nnoremap q[ :vsc TestExplorer.ShowTestExplorer<cr>
nnoremap q] :vsc View.ErrorList<cr>

nnoremap gof :vsc File.OpenContainingFolder<cr>
nnoremap got :vsc Tools.ExternalCommand2<cr>
" toggle 'Track Active Item in Solution Explorer' option
nnoremap cos :vsc View.TrackActivityinSolutionExplorer<cr>
" highlight active file in Solution Explorer (VS 2012+)
nnoremap ^ :vsc SolutionExplorer.SyncWithActiveDocument<cr>

nnoremap cow :vsc Edit.ToggleWordWrap<cr>