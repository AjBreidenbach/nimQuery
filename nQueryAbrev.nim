import nimquery, dom

proc `$$`*(s: cstring): Element =
  jQuery(s)

proc getVal*(s: cstring): cstring =
  getVal(jQuery(s))

proc getHtml*(s: cstring): cstring =
  getHtml(jQuery(s))

proc getText*(s: cstring): cstring =
  getText(jQuery(s))
  
proc setVal*(s: cstring, v: cstring) =
  setVal(jQuery(s), v)

proc setText*(s: cstring, v: cstring) =
  setText(jQuery(s), v)
  
proc setHtml*(s: cstring, v: cstring) =
  setHtml(jQuery(s), v)

proc append*(s: cstring, v: cstring) =
  append(jQuery(s), v)

proc prepend*(s: cstring, v: cstring) =
  prepend(jQuery(s), v)

proc remove*(s: cstring, c: cstring = "") =
  remove(jQuery(s), c)

proc empty*(s: cstring) =
  empty(jQuery(s))

proc toggleClass*(s: cstring, c: cstring = "") =
  toggleClass(jQuery(s), c)


proc load(s, url:cstring; callback: cstring ="") =
  load(s, url, callback)

proc get(url: cstring; callback: cstring ="") =
  get(url, callback)

proc post(url: cstring; data, callback: cstring="") =
  post(url, data, callback)

# event handler wrappers
proc click*(s: cstring, f: cstring) =
  click(jQuery(s), f)

proc blur*(s: cstring, f: cstring) =
  blur(jQuery(s), f)

proc change*(s: cstring, f: cstring) =
  change(jQuery(s), f)

proc dblclick*(s: cstring, f: cstring) =
  dblclick(jQuery(s), f)

proc focus*(s: cstring, f: cstring) =
  focus(jQuery(s), f)

proc focusin*(s: cstring, f: cstring) =
  focusin(jQuery(s), f)

proc focusout*(s: cstring, f: cstring) =
  focusout(jQuery(s), f)

proc hover*(s: cstring, f: cstring) =
  hover(jQuery(s), f)

proc keydown*(s: cstring, f: cstring) =
  keydown(jQuery(s), f)

proc keypress*(s: cstring, f: cstring) =
  keypress(jQuery(s), f)

proc keyup*(s: cstring, f: cstring) =
  keyup(jQuery(s), f)

proc mousedown*(s: cstring, f: cstring) =
  mousedown(jQuery(s), f)

proc mouseenter*(s: cstring, f: cstring) =
  mouseenter(jQuery(s), f)

proc mouseleave*(s: cstring, f: cstring) =
  mouseleave(jQuery(s), f)

proc mousemove*(s: cstring, f: cstring) =
  mousemove(jQuery(s), f)

proc mouseout*(s: cstring, f: cstring) =
  mouseout(jQuery(s), f)

proc mouseup*(s: cstring, f: cstring) =
  mouseup(jQuery(s), f)

proc off*(s: cstring, f: cstring) =
  off(jQuery(s), f)

proc on*(s: cstring, f: cstring) =
  on(jQuery(s), f)

proc ready*(s: cstring, f: cstring) =
  ready(jQuery(s), f)

proc resize*(s: cstring, f: cstring) =
  resize(jQuery(s), f)

proc scroll*(s: cstring, f: cstring) =
  scroll(jQuery(s), f)

proc select*(s: cstring, f: cstring) =
  select(jQuery(s), f)

proc submit*(s: cstring, f: cstring) =
  submit(jQuery(s), f)

proc trigger*(s: cstring, f: cstring) =
  trigger(jQuery(s), f)

proc triggerHandler*(s: cstring, f: cstring) =
  triggerHandler(jQuery(s), f)
