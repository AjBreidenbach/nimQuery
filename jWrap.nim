import dom

type
  Event = ref object
    currentTarget* {.importc.}: Element
    data* {.importc.}: cstring
    metaKey* {.importc.}: cstring
    namespace* {.importc.}: cstring
    pageX* {.importc.}: cint
    pageY* {.importc.}: cint
    relatedTarget* {.importc.}: Element
    target* {.importc.}: Element
    timeStamp* {.importc.}: cint
    which* {.importc.}: cstring


{.push importcpp.}
proc jQuery(w: Window = window, sel: cstring): Element
proc getVal(w: Window = window, selector: cstring): cstring
proc getHtml(w: Window = window, selector: cstring): cstring
proc getText(w: Window = window, selector: cstring): cstring
proc empty(w: Window = window, selector: cstring)
proc setVal(w: Window = window, selector: cstring, val: cstring)
proc setHtml(w: Window = window, selector: cstring, val: cstring)
proc setText(w: Window = window, selector: cstring, val: cstring)
proc append(w: Window = window, selector: cstring, val: cstring)
proc prepend(w: Window = window, selector: cstring, val: cstring)
proc remove(w: Window = window, selector: cstring, cls: cstring)
proc toggleClass(w: Window = window, selector: cstring, cls: cstring)
proc click(w: Window = window, selector: cstring, onClick: proc(e: Event))
{.pop.}

proc jQuery*(sel1: cstring): Element =
  jQuery(sel = sel1)

proc getVal*(s1: cstring): cstring =
  getVal(selector = s1)

proc getHtml*(s1: cstring): cstring =
  getHtml(selector = s1)

proc getText*(s1: cstring): cstring =
  getText(selector = s1)
  
proc setVal*(s1: cstring, val1: cstring) =
  setVal(selector = s1, val = val1)

proc setText*(s1: cstring, val1: cstring) =
  setText(selector = s1, val = val1)
  
proc setHtml*(s1: cstring, val1: cstring) =
  setHtml(selector = s1, val = val1)

proc append*(s1: cstring, val1: cstring) =
  append(selector = s1, val = val1)

proc prepend*(s1: cstring, val1: cstring) =
  prepend(selector = s1, val = val1)

proc remove*(s1: cstring, cls1: cstring = "") =
  remove(selector = s1, cls = cls1)

proc empty*(s1: string) =
  empty(selector = s1)

proc toggleClass*(s1: cstring, cls1: cstring = "") =
  toggleClass(selector = s1, cls = cls1)

proc click*(s1: cstring, c1: proc(e: Event)) =
  click(selector = s1, onClick = c1)
