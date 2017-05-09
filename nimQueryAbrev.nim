import nimQuery, dom

proc q*(s: cstring): Element =jQuery(s)
proc q*(e: Element): Element =jQuery(e)
proc q*(d: Document): Element =jQuery(d)

proc val*(sel: cstring): cstring = val(jQuery(sel))
proc valInt*(sel: cstring): cint = valInt(jQuery(sel))
proc html*(sel: cstring): cstring = html(jQuery(sel))
proc text*(sel: cstring): cstring = text(jQuery(sel))
proc attr*(sel: cstring, attribute: cstring): cstring = attr(jQuery(sel), attribute)
proc attr*(sel: cstring, attribute: cstring, value: cstring) = attr(jQuery(sel), attribute, value)
proc css*(sel: cstring, property: cstring): cstring =css(jQuery(sel), property)
proc css*(sel: cstring, property: cstring, value:cstring) = css(jQuery(sel), property, value)
proc empty*(sel: cstring) = empty(jQuery(sel))
proc val*(sel: cstring, val: cstring) = val(jQuery(sel), val)
proc val*(sel: cstring, val: cint) = val(jQuery(sel), val)
proc html*(sel: cstring, val: cstring) = html(jQuery(sel), val)
proc text*(sel: cstring, val: cstring) = text(jQuery(sel), val)
proc append*(sel: cstring, val: cstring) =  append(jQuery(sel), val)
proc append*(sel: cstring, val: Element) = append(jQuery(sel), val)
proc before*(sel: cstring, val: cstring) = before(jQuery(sel), val)
proc before*(sel: cstring, val: Element) = before(jQuery(sel), val)
proc after*(sel: cstring, val: cstring) = after(jQuery(sel), val)
proc after*(sel: cstring, val: Element) = after(jQuery(sel), val)
proc prepend*(sel: cstring, val: cstring) = prepend(jQuery(sel), val)
proc prepend*(sel: cstring, val: Element) = prepend(jQuery(sel), val)
proc remove*(sel: cstring, cls: cstring) = remove(jQuery(sel), cls)
proc toggleClass*(sel: cstring, cls: cstring) = toggleClass(jQuery(sel), cls)
proc width*(sel: cstring): cint = width(jQuery(sel))
proc height*(sel: cstring): cint = height(jQuery(sel))
proc innerWidth*(sel: cstring): cint = innerWidth(jQuery(sel))
proc innerHeight*(sel: cstring): cint = innerHeight(jQuery(sel))
proc outerWidth*(sel: cstring): cint = outerWidth(jQuery(sel))
proc outerHeight*(sel: cstring): cint = outerHeight(jQuery(sel))
proc parent*(sel, selector: cstring): Element = parent(jQuery(sel))
proc parents*(sel, selector: cstring): Element = parents(jQuery(sel), selector)
proc parentsUntil*(sel, selector: cstring): Element = parentsUntil(jQuery(sel), selector)
proc children*(sel, selector: cstring): Element = children(jQuery(sel), selector)
proc siblings*(sel, selector: cstring): Element = siblings(jQuery(sel), selector)
proc find*(sel: cstring, selector: cstring): Element = find(jQuery(sel), selector)
proc next*(sel: cstring): Element = next(jQuery(sel))
proc prev*(sel: cstring): Element = prev(jQuery(sel))
proc nextAll*(sel: cstring): Element = nextAll(jQuery(sel))
proc prevAll*(sel: cstring): Element = prevAll(jQuery(sel))
proc nextUntil*(sel, selector: cstring): Element = nextUntil(jQuery(sel), selector)
proc prevUntil*(sel, selector: cstring): Element = prevUntil(jQuery(sel), selector)
proc load*(sel: cstring, url , data: cstring ="", complete: proc (response, status, xhr: cstring) = doNothing) = load(jQuery(sel), url, data, complete)
proc click*(sel: cstring, handler: proc(e: JEvent)) = click(jQuery(sel), handler)
proc blur*(sel: cstring, handler: proc(e: JEvent)) = blur(jQuery(sel), handler)
proc change*(sel: cstring, handler: proc(e: JEvent)) = change(jQuery(sel), handler)
proc dblclick*(sel: cstring, handler: proc(e: JEvent)) = dblclick(jQuery(sel), handler)
proc focus*(sel: cstring, handler: proc(e: JEvent)) = focus(jQuery(sel), handler)
proc focusin*(sel: cstring, handler: proc(e: JEvent)) = focusin(jQuery(sel), handler)
proc focusout*(sel: cstring, handler: proc(e: JEvent)) = focusout(jQuery(sel), handler)
proc hover*(sel: cstring, handler: proc(e: JEvent)) = hover(jQuery(sel), handler)
proc keydown*(sel: cstring, handler: proc(e: JEvent)) = keydown(jQuery(sel), handler)
proc keypress*(sel: cstring, handler: proc(e: JEvent)) = keypress(jQuery(sel), handler)
proc keyup*(sel: cstring, handler: proc(e: JEvent)) = keyup(jQuery(sel), handler)
proc mousedown*(sel: cstring, handler: proc(e: JEvent)) = mousedown(jQuery(sel), handler)
proc mouseenter*(sel: cstring, handler: proc(e: JEvent)) = mouseenter(jQuery(sel), handler)
proc mouseleave*(sel: cstring, handler: proc(e: JEvent)) = mouseleave(jQuery(sel), handler)
proc mousemove*(sel: cstring, handler: proc(e: JEvent)) = mousemove(jQuery(sel), handler)
proc mouseout*(sel: cstring, handler: proc(e: JEvent)) = mouseout(jQuery(sel), handler)
proc mouseup*(sel: cstring, handler: proc(e: JEvent)) = mouseup(jQuery(sel), handler)
proc off*(sel: cstring, handler: proc(e: JEvent)) = off(jQuery(sel), handler)
proc ready*(sel: cstring, handler: proc(e: JEvent)) = ready(jQuery(sel), handler)
proc resize*(sel: cstring, handler: proc(e: JEvent)) = resize(jQuery(sel), handler)
proc scroll*(sel: cstring, handler: proc(e: JEvent)) = scroll(jQuery(sel), handler)
proc select*(sel: cstring, handler: proc(e: JEvent)) = select(jQuery(sel), handler)
proc submit*(sel: cstring, handler: proc(e: JEvent)) = submit(jQuery(sel), handler)
proc trigger*(sel: cstring, handler: proc(e: JEvent)) = trigger(jQuery(sel), handler)
proc triggerHandler*(sel: cstring, handler: proc(e: JEvent)) = triggerHandler(jQuery(sel), handler)
