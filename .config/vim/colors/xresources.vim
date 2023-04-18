let g:colors_name = "xresources"

" General UI
" --------------------------------------------------------------------

  " Normal text
  hi! Normal         ctermfg=15   ctermbg=none cterm=none
  " Concealed element: \lambda → λ
  hi! Conceal        ctermfg=12   ctermbg=none cterm=none
  " Directory names, special names in listing
  hi! Directory      ctermfg=10   ctermbg=none cterm=bold
  " Match paired bracket under the cursor
  hi! MatchParen     ctermfg=none ctermbg=8    cterm=bold
  " '~' and '@' at the end of the window, characters from
  "	'showbreak' and other characters that do not really exist in
  " the text (e.g., ">" displayed when a double-wide character
  "	doesn't fit at the end of the line).
  hi! NonText        ctermfg=8    ctermbg=none cterm=none
  " Color of search results
  hi! Search         ctermfg=11   ctermbg=8    cterm=inverse
  " Meta and special keys listed with ":map", also for text used
  " to show unprintable characters in the text, 'listchars'.
  " Generally: text that is displayed differently from what
  " it really is.
  hi! SpecialKey     ctermfg=8    ctermbg=none cterm=none
  " Titles for output from :set all, :autocmd, etc.
  hi! Title          ctermfg=10   ctermbg=none cterm=bold
  " The column separating vertically split windows
  hi! VertSplit      ctermfg=7    ctermbg=none cterm=none
  " Color of lines selected in visual mode
  hi! Visual         ctermfg=none ctermbg=8    cterm=reverse


" Cursor
" --------------------------------------------------------------------

  " Character under cursor
  hi! Cursor         ctermfg=none ctermbg=none cterm=reverse
  " like Cursor, but used when in IME mode
  hi! link CursorIM  Cursor
  " Visual mode cursor, selection
  hi! link vCursor   Cursor
  " Input moder cursor
  hi! link iCursor   Cursor
  " Language mapping cursor
  hi! link lCursor   Cursor
  " Line number of CursorLine
  hi! CursorLineNr   ctermfg=11   ctermbg=none cterm=none
  " Screen line that the cursor is
  hi! CursorLine     ctermfg=none ctermbg=8    cterm=none
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine


" Gutter
" --------------------------------------------------------------------

  " Line number for :number and :# commands
  hi! LineNr         ctermfg=7    ctermbg=none cterm=none
  " Column where signs are displayed
  hi! SignColumn     ctermfg=none ctermbg=none cterm=none
  " Line used for closed folds
  hi! Folded         ctermfg=7    ctermbg=0    cterm=italic
  " Column where folds are displayed
  hi! FoldColumn     ctermfg=7    ctermbg=0    cterm=none
  " used for the columns set with 'colorcolumn'
  hi! ColorColumn    ctermfg=7    ctermbg=0    cterm=italic


" Messages
" --------------------------------------------------------------------

  " Error messages on the command line
  hi! ErrorMsg       ctermfg=0    ctermbg=1    cterm=none
  " More prompt: -- More --
  hi! MoreMsg        ctermfg=11   ctermbg=none cterm=bold
  " Current mode message: -- INSERT --
  hi! ModeMsg        ctermfg=11   ctermbg=none cterm=bold
  " 'Press enter' prompt and yes/no questions
  hi! Question       ctermfg=3    ctermbg=none cterm=bold
  " Warning messages
  hi! WarningMsg     ctermfg=9    ctermbg=none cterm=none


" Completion menu
" --------------------------------------------------------------------

  " Current match in wildmenu completion
  hi! WildMenu       ctermfg=12   ctermbg=8    cterm=bold
  " Popup menu: normal item
  hi! Pmenu          ctermfg=none ctermbg=8    cterm=none
  " Popup menu: selected item
  hi! PmenuSel       ctermfg=none ctermbg=4    cterm=bold
  " Popup menu: scrollbar
  hi! PmenuSbar      ctermfg=none ctermbg=8    cterm=none
  " Popup menu: scrollbar thumb
  hi! PmenuThumb     ctermfg=none ctermbg=8    cterm=none


" Tabs
" --------------------------------------------------------------------

  " Tab pages line filler
  hi! TabLineFill    ctermfg=none ctermbg=0  cterm=none
  " Active tab page label
  hi! TabLineSel     ctermfg=10   ctermbg=0  cterm=none
  " Not active tab page label
  hi! link           TabLine      TabLineFill


" Diff highlighting
" --------------------------------------------------------------------

  " diff mode: Added line
  hi! DiffAdd        ctermfg=10   ctermbg=none cterm=inverse
  " diff mode: Changed line
  hi! DiffChange     ctermfg=14   ctermbg=none cterm=inverse
  " diff mode: Deleted line
  hi! DiffDelete     ctermfg=9    ctermbg=none cterm=inverse
  " diff mode: Changed text within a changed line
  hi! DiffText       ctermfg=11   ctermbg=none cterm=inverse


" Spelling
" --------------------------------------------------------------------

  " Not recognized word
  hi! SpellBad   ctermfg=none ctermbg=none cterm=undercurl ctermul=9
  " Not capitalised word, or compile warnings
  hi! SpellCap   ctermfg=none ctermbg=none cterm=undercurl ctermul=12
  " Wrong spelling for selected region
  hi! SpellLocal ctermfg=none ctermbg=none cterm=undercurl ctermul=14
  " Rare word
  hi! SpellRare  ctermfg=none ctermbg=none cterm=undercurl ctermul=13

" Syntax highlighting
" --------------------------------------------------------------------

  " Any comments
  hi! Comment          ctermfg=7    ctermbg=none    cterm=italic

  " Any constant
  hi! Constant         ctermfg=13   ctermbg=none    cterm=none
  " String constant: "this is a string"
  hi! String           ctermfg=10   ctermbg=none    cterm=italic
  " Character constant: 'c', '/n'
  hi! Character        ctermfg=13   ctermbg=none    cterm=none
  " Number constant: 234, 0xff
  hi! Number           ctermfg=13   ctermbg=none    cterm=none
  " Boolean constant: TRUE, false
  hi! Boolean          ctermfg=13   ctermbg=none    cterm=none
  " Floating point constant: 2.3e10
  hi! Float            ctermfg=13   ctermbg=none    cterm=bold

  " Any statement
  hi! Statement        ctermfg=9    ctermbg=none    cterm=none
  " if, then, else, endif, switch, etc.
  hi! Conditional      ctermfg=9    ctermbg=none    cterm=none
  " for, do, while, etc.
  hi! Repeat           ctermfg=9    ctermbg=none    cterm=none
  " case, default, etc.
  hi! Label            ctermfg=9    ctermbg=none    cterm=none
  " try, catch, throw
  hi! Exception        ctermfg=9    ctermbg=none    cterm=none
  " sizeof, "+", "*", etc.
  hi! Operator         ctermfg=none ctermbg=none    cterm=none
  " Any other keyword
  hi! Keyword          ctermfg=9    ctermbg=none    cterm=none

  " Variable name
  hi! Identifier       ctermfg=12   ctermbg=none    cterm=none
  " Function name (also: methods for classes)
  hi! Function         ctermfg=10   ctermbg=none    cterm=bold

  " Generic preprocessor
  hi! PreProc          ctermfg=14   ctermbg=none    cterm=none
  " Preprocessor #include
  hi! Include          ctermfg=14   ctermbg=none    cterm=none
  " Preprocessor #define
  hi! Define           ctermfg=14   ctermbg=none    cterm=none
  " Same as Define
  hi! Macro            ctermfg=14   ctermbg=none    cterm=none
  " Preprocessor #if, #else, #endif, etc.
  hi! PreCondit        ctermfg=14   ctermbg=none    cterm=none

  " Int, long, char, etc.
  hi! Type             ctermfg=11   ctermbg=none    cterm=none
  " Static, register, volatile, etc
  hi! StorageClass     ctermfg=11   ctermbg=none    cterm=none
  " Struct, union, enum, etc.
  hi! Structure        ctermfg=14   ctermbg=none    cterm=none
  " Any typedef
  hi! TypeDef          ctermfg=11   ctermbg=none    cterm=none

  " Any special symbol
  hi! Special          ctermfg=3    ctermbg=none    cterm=none
  " Special character in a constant
  hi! SpecialChar      ctermfg=3    ctermbg=none    cterm=none
  " You can use CTRL-] on this
  hi! Tag              ctermfg=3    ctermbg=none    cterm=none
  " Character that needs attention
  hi! Delimiter        ctermfg=3    ctermbg=none    cterm=none
  " Special things inside a comment
  hi! SpecialComment   ctermfg=3    ctermbg=none    cterm=none
  " Debugging statements
  hi! Debug            ctermfg=3    ctermbg=none    cterm=none

  " Text that stands out, HTML links
  hi! Underlined       ctermfg=12   ctermbg=none    cterm=underline
  " Left blank, hidden
  hi! Ignore           ctermfg=none ctermbg=none    cterm=italic
  " Any erroneous construct
  hi! Error            ctermfg=9    ctermbg=none    cterm=bold,reverse
  " anything that needs extra attention;
  " mostly the keywords TODO FIXME and XXX
  hi! Todo             ctermfg=none ctermbg=none    cterm=bold,italic


" Plugins
" --------------------------------------------------------------------

  " NERDTree
  hi! link NERDTreeDir       PreProc
  hi! link NERDTreeDirSlash  PreProc
  hi! link NERDTreeOpenable  Special
  hi! link NERDTreeClosable  Special
  hi! link NERDTreeFile      Normal
  hi! link NERDTreeExecFile  Type
  hi! link NERDTreeUp        Comment
  hi! link NERDTreeCWD       TabLineSel
  hi! link NERDTreeHelp      Normal
  hi! link NERDTreeToggleOn  TabLineSel
  hi! link NERDTreeToggleOff Statement


" Filetype Specific
" --------------------------------------------------------------------

  " Diff
  hi! link diffAdded   TabLineSel
  hi! link diffRemoved Statement
  hi! link diffChanged PreProc
  hi! link diffFile    Special
  hi! link diffNewFile Type
  hi! link diffLine    Identifier

  " HTML
  hi! link htmlTag            Identifier
  hi! link htmlEndTag         Identifier
  hi! link htmlTagName        PreProc
  hi! link htmlArg            PreProc
  hi! link htmlScriptTag      Constant
  hi! link htmlTagN           Normal
  hi! htmlLink                ctermfg=15 ctermbg=none cterm=underline
  hi! link htmlSpecialChar    Special
  hi! htmlBold                ctermfg=15 ctermbg=none cterm=bold
  hi! htmlBoldUnderline       ctermfg=15 ctermbg=none cterm=bold,underline
  hi! htmlBoldItalic          ctermfg=15 ctermbg=none cterm=bold,italic
  hi! htmlBoldUnderlineItalic ctermfg=15 ctermbg=none cterm=bold,underline,italic
  hi! htmlUnderline           ctermfg=15 ctermbg=none cterm=underline
  hi! htmlUnderlineItalic     ctermfg=15 ctermbg=none cterm=underline,italic
  hi! htmlItalic              ctermfg=15 ctermbg=none cterm=italic

  " Xml
  hi! link xmlTag               Identifier
  hi! link xmlEndTag            Identifier
  hi! link xmlTagName           Identifier
  hi! link xmlEqual             Identifier
  hi! link docbkKeyword         htmlSpecialTagName
  hi! link xmlDocTypeDecl       Comment
  hi! link xmlDocTypeKeyword    Constant
  hi! link xmlCdataStart        Comment
  hi! link xmlCdataCdata        Constant
  hi! link dtdFunction          Comment
  hi! link dtdTagName           Constant
  hi! link xmlAttrib            PreProc
  hi! link xmlProcessingDelim   Comment
  hi! link dtdParamEntityPunct  Comment
  hi! link dtdParamEntityDPunct Comment
  hi! link xmlAttribPunct       Comment
  hi! link xmlEntity            Special
  hi! link xmlEntityPunct       Special

  " Vim
  hi! link vimCommentTitle Comment
  hi! link vimNotation     Special
  hi! link vimBracket      Special
  hi! link vimMapModKey    Special
  hi! link vimFuncSID      Comment
  hi! link vimSetSep       Comment
  hi! link vimSep          Comment
  hi! link vimContinue     Comment

  " Clojure
  hi! link clojureKeyword          Identifier
  hi! link clojureCond             Special
  hi! link clojureSpecial          Special
  hi! link clojureDefine           Special
  hi! link clojureFunc             Type
  hi! link clojureRepeat           Type
  hi! link clojureCharacter        PreProc
  hi! link clojureStringEscape     PreProc
  hi! link clojureException        Statement
  hi! link clojureRegexp           PreProc
  hi! link clojureRegexpEscape     PreProc
  hi! link clojureRegexpCharClass  htmlBold
  hi! link clojureRegexpMod        clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi! link clojureParen            Comment
  hi! link clojureAnonArg          Type
  hi! link clojureVariable         Identifier
  hi! link clojureMacro            Special
  hi! link clojureMeta             Type
  hi! link clojureDeref            Type
  hi! link clojureQuote            Type
  hi! link clojureUnquote          Type

  " C
  hi! link cOperator  Constant
  hi! link cStructure Special

  " Python
  hi! link pythonBuiltin     Special
  hi! link pythonBuiltinObj  Special
  hi! link pythonBuiltinFunc Special
  hi! link pythonFunction    PreProc
  hi! link pythonDecorator   Label
  hi! link pythonInclude     Identifier
  hi! link pythonImport      Identifier
  hi! link pythonRun         Identifier
  hi! link pythonCoding      Identifier
  hi! link pythonOperator    Label
  hi! link pythonException   Label
  hi! link pythonExceptions  Number
  hi! link pythonBoolean     Number
  hi! link pythonDot         Comment
  hi! link pythonConditional Label
  hi! link pythonRepeat      Label
  hi! link pythonDottedName  Title

  " CSS
  hi! link cssBraces               Identifier
  hi! link cssFunctionName         Type
  hi! link cssIdentifier           Special
  hi! link cssClassName            TabLineSel
  hi! link cssColor                Identifier
  hi! link cssSelectorOp           Identifier
  hi! link cssSelectorOp2          Identifier
  hi! link cssImportant            TabLineSel
  hi! link cssVendor               Normal
  hi! link cssTextProp             PreProc
  hi! link cssAnimationProp        PreProc
  hi! link cssUIProp               Type
  hi! link cssTransformProp        PreProc
  hi! link cssTransitionProp       PreProc
  hi! link cssPrintProp            PreProc
  hi! link cssPositioningProp      Type
  hi! link cssBoxProp              PreProc
  hi! link cssFontDescriptorProp   PreProc
  hi! link cssFlexibleBoxProp      PreProc
  hi! link cssBorderOutlineProp    PreProc
  hi! link cssBackgroundProp       PreProc
  hi! link cssMarginProp           PreProc
  hi! link cssListProp             PreProc
  hi! link cssTableProp            PreProc
  hi! link cssFontProp             PreProc
  hi! link cssPaddingProp          PreProc
  hi! link cssDimensionProp        PreProc
  hi! link cssRenderProp           PreProc
  hi! link cssColorProp            PreProc
  hi! link cssGeneratedContentProp PreProc

  " JavaScript
  hi! link javaScriptBraces     Normal
  hi! link javaScriptFunction   PreProc
  hi! link javaScriptIdentifier Statement
  hi! link javaScriptMember     Identifier
  hi! link javaScriptNumber     Constant
  hi! link javaScriptNull       Constant
  hi! link javaScriptParens     Comment

  " YAJS
  hi! link javascriptImport               PreProc
  hi! link javascriptExport               PreProc
  hi! link javascriptClassKeyword         PreProc
  hi! link javascriptClassExtends         PreProc
  hi! link javascriptDefault              PreProc
  hi! link javascriptClassName            Type
  hi! link javascriptClassSuperName       Type
  hi! link javascriptGlobal               Type
  hi! link javascriptEndColons            Normal
  hi! link javascriptFuncArg              Normal
  hi! link javascriptGlobalMethod         Normal
  hi! link javascriptNodeGlobal           Normal
  hi! link javascriptBOMWindowProp        Normal
  hi! link javascriptArrayMethod          Normal
  hi! link javascriptArrayStaticMethod    Normal
  hi! link javascriptCacheMethod          Normal
  hi! link javascriptDateMethod           Normal
  hi! link javascriptMathStaticMethod     Normal
  hi! link javascriptURLUtilsProp         Normal
  hi! link javascriptBOMNavigatorProp     Normal
  hi! link javascriptDOMDocMethod         Normal
  hi! link javascriptDOMDocProp           Normal
  hi! link javascriptBOMLocationMethod    Normal
  hi! link javascriptBOMWindowMethod      Normal
  hi! link javascriptStringMethod         Normal
  hi! link javascriptVariable             Special
  hi! link javascriptIdentifier           Special
  hi! link javascriptClassSuper           Special
  hi! link javascriptFuncKeyword          PreProc
  hi! link javascriptAsyncFunc            PreProc
  hi! link javascriptClassStatic          Special
  hi! link javascriptOperator             Statement
  hi! link javascriptForOperator          Statement
  hi! link javascriptYield                Statement
  hi! link javascriptExceptions           Statement
  hi! link javascriptMessage              Statement
  hi! link javascriptTemplateSB           PreProc
  hi! link javascriptTemplateSubstitution Normal
  hi! link javascriptLabel                Normal
  hi! link javascriptObjectLabel          Normal
  hi! link javascriptPropertyName         Normal
  hi! link javascriptLogicSymbols         Normal
  hi! link javascriptArrowFunc            Type
  hi! link javascriptDocParamName         Comments
  hi! link javascriptDocTags              Comments
  hi! link javascriptDocNotation          Comments
  hi! link javascriptDocParamType         Comments
  hi! link javascriptDocNamedParamType    Comments
  hi! link javascriptBrackets             Normal
  hi! link javascriptDOMElemAttrs         Normal
  hi! link javascriptDOMEventMethod       Normal
  hi! link javascriptDOMNodeMethod        Normal
  hi! link javascriptDOMStorageMethod     Normal
  hi! link javascriptHeadersMethod        Normal
  hi! link javascriptAsyncFuncKeyword     Statement
  hi! link javascriptAwaitFuncKeyword     Statement

  " PanglosJS
  hi! link jsClassKeyword      PreProc
  hi! link jsExtendsKeyword    PreProc
  hi! link jsExportDefault     PreProc
  hi! link jsTemplateBraces    PreProc
  hi! link jsGlobalNodeObjects Normal
  hi! link jsGlobalObjects     Normal
  hi! link jsFunction          PreProc
  hi! link jsFuncParens        Comment
  hi! link jsParens            Comment
  hi! link jsNull              Constant
  hi! link jsUndefined         Constant
  hi! link jsClassDefinition   Type

  " TypeScript
  hi! link typeScriptReserved               PreProc
  hi! link typeScriptLabel                  PreProc
  hi! link typeScriptFuncKeyword            PreProc
  hi! link typeScriptIdentifier             Special
  hi! link typeScriptBraces                 Normal
  hi! link typeScriptEndColons              Normal
  hi! link typeScriptDOMObjects             Normal
  hi! link typeScriptAjaxMethods            Normal
  hi! link typeScriptLogicSymbols           Normal
  hi! link typeScriptDocSeeTag              Comment
  hi! link typeScriptDocParam               Comment
  hi! link typeScriptDocTags                vimCommentTitle
  hi! link typeScriptGlobalObjects          Normal
  hi! link typeScriptParens                 Comment
  hi! link typeScriptOpSymbols              Comment
  hi! link typeScriptHtmlElemProperties     Normal
  hi! link typeScriptNull                   Constant
  hi! link typeScriptInterpolationDelimiter PreProc

  " PureScript
  hi! link purescriptModuleKeyword PreProc
  hi! link purescriptModuleName    Normal
  hi! link purescriptWhere         PreProc
  hi! link purescriptDelimiter     Comments
  hi! link purescriptType          Normal
  hi! link purescriptImportKeyword PreProc
  hi! link purescriptHidingKeyword PreProc
  hi! link purescriptAsKeyword     PreProc
  hi! link purescriptStructure     PreProc
  hi! link purescriptOperator      Identifier
  hi! link purescriptTypeVar       Normal
  hi! link purescriptConstructor   Normal
  hi! link purescriptFunction      Normal
  hi! link purescriptConditional   Special
  hi! link purescriptBacktick      Special

  " CoffeScript
  hi! link coffeeExtendedOp Comment
  hi! link coffeeSpecialOp  Comment
  hi! link coffeeCurly      Special
  hi! link coffeeParen      Comment
  hi! link coffeeBracket    Special

  " Ruby
  hi! link rubyStringDelimiter        TabLineSel
  hi! link rubyInterpolationDelimiter PreProc

  " ObjectiveC
  hi! link objcTypeModifier Statement
  hi! link objcDirective    Identifier
  
  " Go
  hi! link goDirective   PreProc
  hi! link goConstants   Constant
  hi! link goDeclaration Statement
  hi! link goDeclType    Identifier
  hi! link goBuiltins    Special

  " Lua
  hi! link luaIn       Statement
  hi! link luaFunction PreProc
  hi! link luaTable    Special

  " MoonScript
  hi! link moonSpecialOp  Comment
  hi! link moonExtendedOp Comment
  hi! link moonFunction   Comment
  hi! link moonObject     Type

  " Java
  hi! link javaAnnotation   Identifier
  hi! link javaDocTags      PreProc
  hi! link javaCommentTitle vimCommentTitle
  hi! link javaParen        Comment
  hi! link javaParen1       Comment
  hi! link javaParen2       Comment
  hi! link javaParen3       Comment
  hi! link javaParen4       Comment
  hi! link javaParen5       Comment
  hi! link javaOperator     Special
  hi! link javaVarArg       TabLineSel

  " Elixir
  hi! link elixirDocString              Comment
  hi! link elixirStringDelimiter        TabLineSel
  hi! link elixirInterpolationDelimiter PreProc
  hi! link elixirModuleDeclaration      Type

  " Scala
  " NB: scala vim syntax file is kinda horrible
  hi! link scalaNameDefinition          Normal
  hi! link scalaCaseFollowing           Normal
  hi! link scalaCapitalWord             Normal
  hi! link scalaTypeExtension           Normal
  hi! link scalaKeyword                 Statement
  hi! link scalaKeywordModifier         Statement
  hi! link scalaSpecial                 PreProc
  hi! link scalaOperator                Normal
  hi! link scalaTypeDeclaration         Type
  hi! link scalaTypeTypePostDeclaration Type
  hi! link scalaInstanceDeclaration     Normal
  hi! link scalaInterpolation           PreProc

  " Markdown
  hi! link markdownItalic            htmlItalic
  hi! link markdownH1                Title
  hi! link markdownH2                Title
  hi! link markdownH3                MoreMsg
  hi! link markdownH4                MoreMsg
  hi! link markdownH5                Type
  hi! link markdownH6                Type
  hi! link markdownCode              PreProc
  hi! link markdownCodeBlock         PreProc
  hi! link markdownCodeDelimiter     PreProc
  hi! link markdownBlockquote        Comment
  hi! link markdownListMarker        Comment
  hi! link markdownOrderedListMarker Comment
  hi! link markdownRule              Comment
  hi! link markdownHeadingRule       Comment
  hi! link markdownUrlDelimiter      Comment
  hi! link markdownLinkDelimiter     Comment
  hi! link markdownLinkTextDelimiter Comment
  hi! link markdownHeadingDelimiter  Special
  hi! link markdownUrl               Constant
  hi! link markdownUrlTitleDelimiter TabLineSel
  hi! markdownLinkText   ctermfg=7   ctermbg=none cterm=underline
  hi! link markdownIdDeclaration     markdownLinkText

  " Haskell
  hi! link haskellType           Normal
  hi! link haskellIdentifier     Normal
  hi! link haskellSeparator      Normal
  hi! link haskellDelimiter      Comments
  hi! link haskellOperators      Identifier
  hi! link haskellBacktick       Special
  hi! link haskellStatement      Special
  hi! link haskellConditional    Special
  hi! link haskellLet            PreProc
  hi! link haskellDefault        PreProc
  hi! link haskellWhere          PreProc
  hi! link haskellBottom         PreProc
  hi! link haskellBlockKeywords  PreProc
  hi! link haskellImportKeywords PreProc
  hi! link haskellDeclKeyword    PreProc
  hi! link haskellDeriving       PreProc
  hi! link haskellAssocType      PreProc
  hi! link haskellNumber         Constant
  hi! link haskellPragma         Constant
  hi! link haskellString         TabLineSel
  hi! link haskellChar           TabLineSel

  " Json
  hi! link jsonKeyword TabLineSel
  hi! link jsonQuote   TabLineSel
  hi! link jsonBraces  Normal
  hi! link jsonString  Normal

  " LilyPond
  hi! link lilyString	      String
  hi! link lilyComment	    Comment
  hi! link lilyNote	        Identifier
  hi! link lilyArticulation	PreProc
  hi! link lilyKeyword	    Keyword
  hi! link lilyReservedWord	Type
  hi! link lilyNumber	      Constant
  hi! link lilySpecial	    Special
  hi! link lilySlur	        ModeMsg
