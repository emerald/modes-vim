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

syn keyword Type Any Signature
syn keyword Type Boolean Integer Character String

syn keyword Type Node NodeList Time
syn keyword Type Array

syn match Comment "%.*$"

syn region  Constant start='"' skip='\\"' end='"'
syn region  Constant start="'" skip="\\'" end="'"
syn keyword Constant true false
