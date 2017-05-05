import dom

type
  jQEvent* = ref object
    altKey*{.importc.}: bool
    bubbles*{.importc.}: bool
    button*{.importc.}: cint
    cancelable*{.importc.}: bool
    charCode*{.importc.}: cint
    clientX*{.importc.}: cint
    clientY*{.importc.}: cint
    ctrlKey*{.importc.}: bool
    currentTarget* {.importc.}: Element
    data* {.importc.}: cstring
    delegateTarget* {.importc.}: Element
    detail* {.importc.}: cint
    eventPhase* {.importc.}: cint
    #???isDefaultPrevented* {.importc.}: cint
    key* {.importc.}: cstring
    keyCode* {.importc.}: cint
    metaKey* {.importc.}: cstring
    offsetX* {.importc.}: cint
    offsetY* {.importc.}: cint
    #handleObj: obj
    originalEvent*: Event
    #?namespace* {.importc.}: cstring
    pageX* {.importc.}: cint
    pageY* {.importc.}: cint
    pointerId* {.importc.}: cint
    pointerType* {.importc.}: cstring
    relatedTarget* {.importc.}: Element
    target* {.importc.}: Element
    targetTouches* {.importc.}: cstring #???
    timeStamp* {.importc.}: cint
    toElement* {.importc.}: Element
    view* {.importc.}: Window
    which* {.importc.}: cint


# Imports
{.push importcpp.}
# jQuery functions
proc jQuery(w: Window = window, sel: cstring): Element
proc getVal(w: Window = window, selector: cstring): cstring
proc getHtml(w: Window = window, selector: cstring): cstring
proc getText(w: Window = window, selector: cstring): cstring
proc empty(w: Window = window, selector: cstring)
proc setVal(w: Window = window, selector: cstring, val: cstring)
proc setVal(w: Window = window, element: Element, val: cstring)
proc setHtml(w: Window = window, selector: cstring, val: cstring)
proc setText(w: Window = window, selector: cstring, val: cstring)
proc append(w: Window = window, selector: cstring, val: cstring)
proc prepend(w: Window = window, selector: cstring, val: cstring)
proc remove(w: Window = window, selector: cstring, cls: cstring)
proc toggleClass(w: Window = window, selector: cstring, cls: cstring)

# ajax
proc load(w: Window = window, selector, u ,fname :cstring)
proc get(w: Window = window,  u, fname :cstring)
proc post(w: Window = window, u, d, fname: cstring)

# event handlers
proc click(w: Window = window, selector: cstring, fname: cstring)
proc blur(w: Window = window, selector: cstring, fname: cstring)
proc change(w: Window = window, selector: cstring, fname: cstring)
proc dblclick(w: Window = window, selector: cstring, fname: cstring)
proc focus(w: Window = window, selector: cstring, fname: cstring)
proc focusin(w: Window = window, selector: cstring, fname: cstring)
proc focusout(w: Window = window, selector: cstring, fname: cstring)
proc hover(w: Window = window, selector: cstring, fname: cstring)
proc keydown(w: Window = window, selector: cstring, fname: cstring)
proc keypress(w: Window = window, selector: cstring, fname: cstring)
proc keyup(w: Window = window, selector: cstring, fname: cstring)
proc mousedown(w: Window = window, selector: cstring, fname: cstring)
proc mouseenter(w: Window = window, selector: cstring, fname: cstring)
proc mouseleave(w: Window = window, selector: cstring, fname: cstring)
proc mousemove(w: Window = window, selector: cstring, fname: cstring)
proc mouseout(w: Window = window, selector: cstring, fname: cstring)
proc mouseup(w: Window = window, selector: cstring, fname: cstring)
proc off(w: Window = window, selector: cstring, fname: cstring)
proc on(w: Window = window, selector: cstring, fname: cstring)
proc ready(w: Window = window, selector: cstring, fname: cstring)
proc resize(w: Window = window, selector: cstring, fname: cstring)
proc scroll(w: Window = window, selector: cstring, fname: cstring)
proc select(w: Window = window, selector: cstring, fname: cstring)
proc submit(w: Window = window, selector: cstring, fname: cstring)
proc trigger(w: Window = window, selector: cstring, fname: cstring)
proc triggerHandler(w: Window = window, selector: cstring, fname: cstring)
{.pop.}

# ergonomic wrappers
proc jQuery*(s: cstring): Element =
  jQuery(sel = s)

proc getVal*(s: cstring): cstring =
  getVal(selector = s)

proc getHtml*(s: cstring): cstring =
  getHtml(selector = s)

proc getText*(s: cstring): cstring =
  getText(selector = s)
  
proc setVal*(e: Element, v: cstring) =
  setVal(element = e, val = v)

proc setVal*(s: cstring, v: cstring) =
  setVal(selector = s, val = v)

proc setText*(s: cstring, v: cstring) =
  setText(selector = s, val = v)
  
proc setHtml*(s: cstring, v: cstring) =
  setHtml(selector = s, val = v)

proc append*(s: cstring, v: cstring) =
  append(selector = s, val = v)

proc prepend*(s: cstring, v: cstring) =
  prepend(selector = s, val = v)

proc remove*(s: cstring, c: cstring = "") =
  remove(selector = s, cls = c)

proc empty*(s: string) =
  empty(selector = s)

proc toggleClass*(s: cstring, c: cstring = "") =
  toggleClass(selector = s, cls = c)


proc load(s, url:cstring; callback: cstring ="") =
  load(selector =s, u = url, fname = callback)

proc get(url: cstring; callback: cstring ="") =
  get(u = url, fname = callback)

proc post(url: cstring; data, callback:cstring= "") =
  post(u = url, d = data, fname = callback)

# event handler wrappers
proc click*(s: cstring, f: cstring) =
  click(selector = s, fname = f)

proc blur*(s: cstring, f: cstring) =
  blur(selector = s, fname = f)

proc change*(s: cstring, f: cstring) =
  change(selector = s, fname = f)

proc dblclick*(s: cstring, f: cstring) =
  dblclick(selector = s, fname = f)

proc focus*(s: cstring, f: cstring) =
  focus(selector = s, fname = f)

proc focusin*(s: cstring, f: cstring) =
  focusin(selector = s, fname = f)

proc focusout*(s: cstring, f: cstring) =
  focusout(selector = s, fname = f)

proc hover*(s: cstring, f: cstring) =
  hover(selector = s, fname = f)

proc keydown*(s: cstring, f: cstring) =
  keydown(selector = s, fname = f)

proc keypress*(s: cstring, f: cstring) =
  keypress(selector = s, fname = f)

proc keyup*(s: cstring, f: cstring) =
  keyup(selector = s, fname = f)

proc mousedown*(s: cstring, f: cstring) =
  mousedown(selector = s, fname = f)

proc mouseenter*(s: cstring, f: cstring) =
  mouseenter(selector = s, fname = f)

proc mouseleave*(s: cstring, f: cstring) =
  mouseleave(selector = s, fname = f)

proc mousemove*(s: cstring, f: cstring) =
  mousemove(selector = s, fname = f)

proc mouseout*(s: cstring, f: cstring) =
  mouseout(selector = s, fname = f)

proc mouseup*(s: cstring, f: cstring) =
  mouseup(selector = s, fname = f)

proc off*(s: cstring, f: cstring) =
  off(selector = s, fname = f)

proc on*(s: cstring, f: cstring) =
  on(selector = s, fname = f)

proc ready*(s: cstring, f: cstring) =
  ready(selector = s, fname = f)

proc resize*(s: cstring, f: cstring) =
  resize(selector = s, fname = f)

proc scroll*(s: cstring, f: cstring) =
  scroll(selector = s, fname = f)

proc select*(s: cstring, f: cstring) =
  select(selector = s, fname = f)

proc submit*(s: cstring, f: cstring) =
  submit(selector = s, fname = f)

proc trigger*(s: cstring, f: cstring) =
  triggerHandler(selector = s, fname = f)

