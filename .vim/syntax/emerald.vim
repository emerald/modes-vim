syntax case ignore

" The keywords as in The Emerald Programming Language Report by
" Hutchinson et al., October 1991:
syn keyword Keyword all       and             as          assert
syn keyword Keyword at        attached        awaiting    begin
syn keyword Keyword builtin   by              checkpoint  class
syn keyword Keyword codeof    confirm         const       else
syn keyword Keyword elseif    end             enumeration exit
syn keyword Keyword export    external        failure     field
syn keyword Keyword fix       for             forall      from
syn keyword Keyword function  if              immutable   initially
syn keyword Keyword isfixed   islocal         locate      loop
syn keyword Keyword monitor   move            nameof      new
syn keyword Keyword object    op              operation   or
syn keyword Keyword primitive process         record      recovery
syn keyword Keyword refix     restrict        return      returnandfail
syn keyword Keyword signal    syntactictypeof suchthat    then
syn keyword Keyword to        typeobject      typeof      unavailable
syn keyword Keyword unfix     var             view        visit
syn keyword Keyword wait      when            where       while

" Additional keywords that have made it into Emerald since:
syn keyword Keyword in

" Built-in types in
" ubc-latest-src commit 2c10c9aa6ce033d28ff27ac71813447ce15ea2f5,
" generated using modes/vim/scripts/types-from-builtins.sh:
syn keyword Type Any AOpVecE AOpVec AParamL
syn keyword Type Array AType Bitchunk Boolean
syn keyword Type Buffer Char Cond COpVecE
syn keyword Type COpVec CType Decoder Direct
syn keyword Type GroupBase Group Handler InStr
syn keyword Type Integer IState IVec IVOfAny
syn keyword Type IVOfInt IVOfStr Literal Makefile
syn keyword Type new_Integer Nil NLElem NodeL
syn keyword Type Node OutStr RDirect Real
syn keyword Type realNode RISA RISC Sequence
syn keyword Type Signat String Stub Time
syn keyword Type Unix vec-ed Vec VOfAny
syn keyword Type VOfChar VOfInt VOfStr xReal
syn keyword Type xxxLiteral

syn match Comment "%.*$"

syn region  Constant start=/"/ skip=/\\["\\]/ end=/"/
syn region  Constant start=/'/ skip=/\\['\\]/ end=/'/
syn keyword Constant true false
