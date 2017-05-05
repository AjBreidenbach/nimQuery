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
proc getVal(w: Window = window, element: Element): cstring
proc getHtml(w: Window = window, element: Element): cstring
proc getText(w: Window = window, element: Element): cstring
proc empty(w: Window = window, element: Element)
proc setVal(w: Window = window, element: Element, val: cstring)
proc setHtml(w: Window = window, element: Element, val: cstring)
proc setText(w: Window = window, element: Element, val: cstring)
proc append(w: Window = window, element: Element, val: cstring)
proc prepend(w: Window = window, element: Element, val: cstring)
proc remove(w: Window = window, element: Element, cls: cstring)
proc toggleClass(w: Window = window, element: Element, cls: cstring)

# ajax
proc load(w: Window = window, element, u ,fname :cstring)
proc get(w: Window = window,  u, fname :cstring)
proc post(w: Window = window, u, d, fname: cstring)

# event handlers
proc click(w: Window = window, element: Element, fname: cstring)
proc blur(w: Window = window, element: Element, fname: cstring)
proc change(w: Window = window, element: Element, fname: cstring)
proc dblclick(w: Window = window, element: Element, fname: cstring)
proc focus(w: Window = window, element: Element, fname: cstring)
proc focusin(w: Window = window, element: Element, fname: cstring)
proc focusout(w: Window = window, element: Element, fname: cstring)
proc hover(w: Window = window, element: Element, fname: cstring)
proc keydown(w: Window = window, element: Element, fname: cstring)
proc keypress(w: Window = window, element: Element, fname: cstring)
proc keyup(w: Window = window, element: Element, fname: cstring)
proc mousedown(w: Window = window, element: Element, fname: cstring)
proc mouseenter(w: Window = window, element: Element, fname: cstring)
proc mouseleave(w: Window = window, element: Element, fname: cstring)
proc mousemove(w: Window = window, element: Element, fname: cstring)
proc mouseout(w: Window = window, element: Element, fname: cstring)
proc mouseup(w: Window = window, element: Element, fname: cstring)
proc off(w: Window = window, element: Element, fname: cstring)
proc on(w: Window = window, element: Element, fname: cstring)
proc ready(w: Window = window, element: Element, fname: cstring)
proc resize(w: Window = window, element: Element, fname: cstring)
proc scroll(w: Window = window, element: Element, fname: cstring)
proc select(w: Window = window, element: Element, fname: cstring)
proc submit(w: Window = window, element: Element, fname: cstring)
proc trigger(w: Window = window, element: Element, fname: cstring)
proc triggerHandler(w: Window = window, element: Element, fname: cstring)
{.pop.}

#  wrappers
proc jQuery*(s: cstring): Element =
  jQuery(sel = s)

proc getVal*(e: Element): cstring =
  getVal(element = e)

proc getHtml*(e: Element): cstring =
  getHtml(element = e)

proc getText*(e: Element): cstring =
  getText(element = e)
  
proc setVal*(e: Element, v: cstring) =
  setVal(element = e, val = v)

proc setText*(e: Element, v: cstring) =
  setText(element = e, val = v)
  
proc setHtml*(e: Element, v: cstring) =
  setHtml(element = e, val = v)

proc append*(e: Element, v: cstring) =
  append(element = e, val = v)

proc prepend*(e: Element, v: cstring) =
  prepend(element = e, val = v)

proc remove*(e: Element, c: cstring = "") =
  remove(element = e, cls = c)

proc empty*(e: Element) =
  empty(element = e)

proc toggleClass*(e: Element, c: cstring = "") =
  toggleClass(element = e, cls = c)


proc load(s, url:cstring; callback: cstring ="") =
  load(element =s, u = url, fname = callback)

proc get(url: cstring; callback: cstring ="") =
  get(u = url, fname = callback)

proc post(url: cstring; data, callback:cstring= "") =
  post(u = url, d = data, fname = callback)

# event handler wrappers
proc click*(e: Element, f: cstring) =
  click(element = e, fname = f)

proc blur*(e: Element, f: cstring) =
  blur(element = e, fname = f)

proc change*(e: Element, f: cstring) =
  change(element = e, fname = f)

proc dblclick*(e: Element, f: cstring) =
  dblclick(element = e, fname = f)

proc focus*(e: Element, f: cstring) =
  focus(element = e, fname = f)

proc focusin*(e: Element, f: cstring) =
  focusin(element = e, fname = f)

proc focusout*(e: Element, f: cstring) =
  focusout(element = e, fname = f)

proc hover*(e: Element, f: cstring) =
  hover(element = e, fname = f)

proc keydown*(e: Element, f: cstring) =
  keydown(element = e, fname = f)

proc keypress*(e: Element, f: cstring) =
  keypress(element = e, fname = f)

proc keyup*(e: Element, f: cstring) =
  keyup(element = e, fname = f)

proc mousedown*(e: Element, f: cstring) =
  mousedown(element = e, fname = f)

proc mouseenter*(e: Element, f: cstring) =
  mouseenter(element = e, fname = f)

proc mouseleave*(e: Element, f: cstring) =
  mouseleave(element = e, fname = f)

proc mousemove*(e: Element, f: cstring) =
  mousemove(element = e, fname = f)

proc mouseout*(e: Element, f: cstring) =
  mouseout(element = e, fname = f)

proc mouseup*(e: Element, f: cstring) =
  mouseup(element = e, fname = f)

proc off*(e: Element, f: cstring) =
  off(element = e, fname = f)

proc on*(e: Element, f: cstring) =
  on(element = e, fname = f)

proc ready*(e: Element, f: cstring) =
  ready(element = e, fname = f)

proc resize*(e: Element, f: cstring) =
  resize(element = e, fname = f)

proc scroll*(e: Element, f: cstring) =
  scroll(element = e, fname = f)

proc select*(e: Element, f: cstring) =
  select(element = e, fname = f)

proc submit*(e: Element, f: cstring) =
  submit(element = e, fname = f)

proc trigger*(e: Element, f: cstring) =
  trigger(element = e, fname = f)

proc triggerHandler*(e: Element, f: cstring) =
  triggerHandler(element = e, fname = f)

