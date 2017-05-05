import dom

type
  JEvent* = ref object
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
    key* {.importc.}: cstring
    keyCode* {.importc.}: cint
    metaKey* {.importc.}: cstring
    offsetX* {.importc.}: cint
    offsetY* {.importc.}: cint
    originalEvent*: Event
    pageX* {.importc.}: cint
    pageY* {.importc.}: cint
    pointerId* {.importc.}: cint
    pointerType* {.importc.}: cstring
    relatedTarget* {.importc.}: Element
    target* {.importc.}: Element
    targetTouches* {.importc.}: cstring
    timeStamp* {.importc.}: cint
    toElement* {.importc.}: Element
    view* {.importc.}: Window
    which* {.importc.}: cint


# Imports
{.push importcpp.}
# jQuery functions
proc jQuery(w: Window = window, sel: cstring): Element
proc jQuery(w: Window = window, element: Element): Element
proc jQuery(w: Window = window, document: Document): Element
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
proc width(w: Window = window, element: Element): cint
proc height(w: Window = window, element: Element): cint
proc innerWidth(w: Window = window, element: Element): cint
proc innerHeight(w: Window = window, element: Element): cint
proc outerWidth(w: Window = window, element: Element): cint
proc outerHeight(w: Window = window, element: Element): cint

# ajax
proc load(w: Window = window, element: Element, u ,fname :cstring)
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

proc click(w: Window = window, element: Element, callback: proc(e: JEvent))
proc blur(w: Window = window, element: Element, callback: proc(e: JEvent))
proc change(w: Window = window, element: Element, callback: proc(e: JEvent))
proc dblclick(w: Window = window, element: Element, callback: proc(e: JEvent))
proc focus(w: Window = window, element: Element, callback: proc(e: JEvent))
proc focusin(w: Window = window, element: Element, callback: proc(e: JEvent))
proc focusout(w: Window = window, element: Element, callback: proc(e: JEvent))
proc hover(w: Window = window, element: Element, callback: proc(e: JEvent))
proc keydown(w: Window = window, element: Element, callback: proc(e: JEvent))
proc keypress(w: Window = window, element: Element, callback: proc(e: JEvent))
proc keyup(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mousedown(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mouseenter(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mouseleave(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mousemove(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mouseout(w: Window = window, element: Element, callback: proc(e: JEvent))
proc mouseup(w: Window = window, element: Element, callback: proc(e: JEvent))
proc off(w: Window = window, element: Element, callback: proc(e: JEvent))
proc on(w: Window = window, element: Element, callback: proc(e: JEvent))
proc ready(w: Window = window, element: Element, callback: proc(e: JEvent))
proc resize(w: Window = window, element: Element, callback: proc(e: JEvent))
proc scroll(w: Window = window, element: Element, callback: proc(e: JEvent))
proc select(w: Window = window, element: Element, callback: proc(e: JEvent))
proc submit(w: Window = window, element: Element, callback: proc(e: JEvent))
proc trigger(w: Window = window, element: Element, callback: proc(e: JEvent))
proc triggerHandler(w: Window = window, element: Element, callback: proc(e: JEvent))
{.pop.}

#  wrappers
proc jQuery*(s: cstring): Element =
  jQuery(sel = s)
  
proc jQuery*(e: Element): Element =
  jQuery(element = e)
  
proc jQuery*(d: Document): Element =
  jQuery(document = d)

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

proc width*(e: Element):cint =
  width(element = e)

proc height*(e: Element):cint =
  height(element = e)

proc innerWidth*(e: Element):cint =
  innerWidth(element = e)

proc innerHeight*(e: Element):cint =
  innerHeight(element = e)

proc outerWidth*(e: Element):cint =
  outerWidth(element = e)

proc outerHeight*(e: Element):cint =
  outerHeight(element = e)

proc load*(e: Element, url:cstring; callback: cstring ="") =
  load(element = e, u = url, fname = callback)

proc get*(url: cstring; callback: cstring ="") =
  get(u = url, fname = callback)

proc post*(url: cstring; data, callback:cstring= "") =
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

proc click*(e: Element, c: proc(e: JEvent)) =
  click(element = e, callback = c)

proc blur*(e: Element, c: proc(e: JEvent)) =
  blur(element = e, callback =c)

proc change*(e: Element, c: proc(e: JEvent)) =
  change(element = e, callback =c)

proc dblclick*(e: Element, c: proc(e: JEvent)) =
  dblclick(element = e, callback =c)

proc focus*(e: Element, c: proc(e: JEvent)) =
  focus(element = e, callback =c)

proc focusin*(e: Element, c: proc(e: JEvent)) =
  focusin(element = e, callback =c)

proc focusout*(e: Element, c: proc(e: JEvent)) =
  focusout(element = e, callback =c)

proc hover*(e: Element, c: proc(e: JEvent)) =
  hover(element = e, callback =c)

proc keydown*(e: Element, c: proc(e: JEvent)) =
  keydown(element = e, callback =c)

proc keypress*(e: Element, c: proc(e: JEvent)) =
  keypress(element = e, callback =c)

proc keyup*(e: Element, c: proc(e: JEvent)) =
  keyup(element = e, callback =c)

proc mousedown*(e: Element, c: proc(e: JEvent)) =
  mousedown(element = e, callback =c)

proc mouseenter*(e: Element, c: proc(e: JEvent)) =
  mouseenter(element = e, callback =c)

proc mouseleave*(e: Element, c: proc(e: JEvent)) =
  mouseleave(element = e, callback =c)

proc mousemove*(e: Element, c: proc(e: JEvent)) =
  mousemove(element = e, callback =c)

proc mouseout*(e: Element, c: proc(e: JEvent)) =
  mouseout(element = e, callback =c)

proc mouseup*(e: Element, c: proc(e: JEvent)) =
  mouseup(element = e, callback =c)

proc off*(e: Element, c: proc(e: JEvent)) =
  off(element = e, callback =c)

proc on*(e: Element, c: proc(e: JEvent)) =
  on(element = e, callback =c)

proc ready*(e: Element, c: proc(e: JEvent)) =
  ready(element = e, callback =c)

proc resize*(e: Element, c: proc(e: JEvent)) =
  resize(element = e, callback =c)

proc scroll*(e: Element, c: proc(e: JEvent)) =
  scroll(element = e, callback =c)

proc select*(e: Element, c: proc(e: JEvent)) =
  select(element = e, callback =c)

proc submit*(e: Element, c: proc(e: JEvent)) =
  submit(element = e, callback =c)

proc trigger*(e: Element, c: proc(e: JEvent)) =
  trigger(element = e, callback =c)

proc triggerHandler*(e: Element, c: proc(e: JEvent)) =
  triggerHandler(element = e, callback =c)
