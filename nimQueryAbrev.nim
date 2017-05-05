import nimQuery, dom

proc n*(s: cstring): Element =
  jQuery(s)

proc n*(e: Element): Element =
  jQuery(e)

proc n*(d: Document): Element =
  jQuery(d)

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

proc width*(s: cstring):cint =
  width(jQuery(s))

proc height*(s: cstring):cint =
  height(jQuery(s))

proc innerWidth*(s: cstring):cint =
  innerWidth(jQuery(s))

proc innerHeight*(s: cstring):cint =
  innerHeight(jQuery(s))

proc outerWidth*(s: cstring):cint =
  outerWidth(jQuery(s))

proc outerHeight*(s: cstring):cint =
  outerHeight(jQuery(s))

proc load*(s, url:cstring; callback: cstring ="") =
  load(jQuery(s), url, callback)

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

proc click*(s: cstring, c: proc(e: JEvent)) =
  click(jQuery(s), c)

proc blur*(s: cstring, c: proc(e: JEvent)) =
  blur(jQuery(s), c)

proc change*(s: cstring, c: proc(e: JEvent)) =
  change(jQuery(s), c)

proc dblclick*(s: cstring, c: proc(e: JEvent)) =
  dblclick(jQuery(s), c)

proc focus*(s: cstring, c: proc(e: JEvent)) =
  focus(jQuery(s), c)

proc focusin*(s: cstring, c: proc(e: JEvent)) =
  focusin(jQuery(s), c)

proc focusout*(s: cstring, c: proc(e: JEvent)) =
  focusout(jQuery(s), c)

proc hover*(s: cstring, c: proc(e: JEvent)) =
  hover(jQuery(s), c)

proc keydown*(s: cstring, c: proc(e: JEvent)) =
  keydown(jQuery(s), c)

proc keypress*(s: cstring, c: proc(e: JEvent)) =
  keypress(jQuery(s), c)

proc keyup*(s: cstring, c: proc(e: JEvent)) =
  keyup(jQuery(s), c)

proc mousedown*(s: cstring, c: proc(e: JEvent)) =
  mousedown(jQuery(s), c)

proc mouseenter*(s: cstring, c: proc(e: JEvent)) =
  mouseenter(jQuery(s), c)

proc mouseleave*(s: cstring, c: proc(e: JEvent)) =
  mouseleave(jQuery(s), c)

proc mousemove*(s: cstring, c: proc(e: JEvent)) =
  mousemove(jQuery(s), c)

proc mouseout*(s: cstring, c: proc(e: JEvent)) =
  mouseout(jQuery(s), c)

proc mouseup*(s: cstring, c: proc(e: JEvent)) =
  mouseup(jQuery(s), c)

proc off*(s: cstring, c: proc(e: JEvent)) =
  off(jQuery(s), c)

proc on*(s: cstring, c: proc(e: JEvent)) =
  on(jQuery(s), c)

proc ready*(s: cstring, c: proc(e: JEvent)) =
  ready(jQuery(s), c)

proc resize*(s: cstring, c: proc(e: JEvent)) =
  resize(jQuery(s), c)

proc scroll*(s: cstring, c: proc(e: JEvent)) =
  scroll(jQuery(s), c)

proc select*(s: cstring, c: proc(e: JEvent)) =
  select(jQuery(s), c)

proc submit*(s: cstring, c: proc(e: JEvent)) =
  submit(jQuery(s), c)

proc trigger*(s: cstring, c: proc(e: JEvent)) =
  trigger(jQuery(s), c)

proc triggerHandler*(s: cstring, c: proc(e: JEvent)) =
  triggerHandler(jQuery(s), c)
