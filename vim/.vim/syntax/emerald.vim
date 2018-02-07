syn keyword Keyword var
syn keyword Keyword const end
syn keyword Keyword object typeobject immutable
syn keyword Keyword operation function
syn keyword Keyword export initially process
syn keyword Keyword true false
syn keyword Keyword self locate
syn keyword Keyword typeof class field
syn keyword Keyword if then
syn keyword Keyword for in while by
syn keyword Keyword monitor
syn keyword Keyword move to
syn keyword Keyword loop
syn keyword Keyword fix unfix refix at

syn keyword Type Any Boolean Integer Signature String
syn keyword Type Node NodeList

syn match Comment "%.*$"

syn region Constant start='"' skip='\\"' end='"'
syn region Constant start="'" skip="\\'" end="'"
