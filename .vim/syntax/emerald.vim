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
" old-emerald commit ea039fee41786c2e029b8da83b6bc85391a55bdf
" generated using modes-vim/scripts/types-from-builtins.sh:
syn keyword Type Any AOpVector
syn keyword Type AOpVectorE AParamList
syn keyword Type Array Bitchunk
syn keyword Type Boolean Buffer
syn keyword Type Character ConcreteType
syn keyword Type Condition COpVector
syn keyword Type COpVectorE Decoder
syn keyword Type Directory DirectoryGaggle
syn keyword Type GListener GManager
syn keyword Type Group Handler
syn keyword Type immutableVector ImmutableVectorOfAny
syn keyword Type ImmutableVectorOfInt ImmutableVectorOfString
syn keyword Type InStream Integer
syn keyword Type InterpreterState LiteralList
syn keyword Type Node NodeList
syn keyword Type NodeListElement None
syn keyword Type OutStream RDirectory
syn keyword Type Real RISA
syn keyword Type RISC Sequence
syn keyword Type SequenceOfAny SequenceOfCharacter
syn keyword Type Signature String
syn keyword Type Stub Time
syn keyword Type type Unix
syn keyword Type Vector VectorOfAny
syn keyword Type VectorOfChar VectorOfInt
syn keyword Type VectorOfString

syn match Comment "%.*$"

syn region  Constant start=/"/ skip=/\\["\\]/ end=/"/
syn region  Constant start=/'/ skip=/\\['\\]/ end=/'/
syn keyword Constant true false
