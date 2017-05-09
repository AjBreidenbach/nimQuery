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

proc exec(w: Window = window, fname:cstring)
proc eval(w: Window = window, script:cstring)
proc natlog(w: Window = window, element: Element)

# bug fixes
proc add(w: Window = window, n1, n2: cint): cint
proc sub(w: Window = window, n1, n2: cint): cint

# jQuery functions
proc jQuery(w: Window = window, selector: cstring): Element
proc jQuery(w: Window = window, element: Element): Element
proc jQuery(w: Window = window, document: Document): Element
proc val*(element: Element): cstring
proc valInt(w: Window = window, e: Element): cint
proc html*(element: Element): cstring
proc text*(element: Element): cstring
proc attr*(element: Element, attribute: cstring): cstring
proc attr*(element: Element, attribute: cstring, value: cstring)
proc css*(element:Element, property: cstring): cstring
proc css*(element:Element, property: cstring, value:cstring)
proc empty*(element: Element)
proc val*(element: Element, val: cstring)
proc val*(element: Element, val: cint)
proc html*(element: Element, val: cstring)
proc text*(element: Element, val: cstring)
proc append*(element: Element, val: cstring)
proc append*(element: Element, val: Element)
proc before*(element: Element, val: cstring)
proc before*(element: Element, val: Element)
proc after*(element: Element, val: cstring)
proc after*(element: Element, val: Element)
proc prepend*(element: Element, val: cstring)
proc prepend*(element: Element, val: Element)
proc remove*(element: Element, cls: cstring)
proc toggleClass*(element: Element, cls: cstring)
proc width*(element: Element): cint
proc height*(element: Element): cint
proc innerWidth*(element: Element): cint
proc innerHeight*(element: Element): cint
proc outerWidth*(element: Element): cint
proc outerHeight*(element: Element): cint
proc parent*(element: Element): Element
proc parents*(element: Element, selector: cstring): Element
proc parentsUntil*(element: Element, selector: cstring): Element
proc children*(element: Element, selector: cstring): Element
proc siblings*(element: Element, selector: cstring): Element
proc find*(element: Element, selector: cstring): Element
proc next*(element: Element): Element
proc nextAll*(element: Element): Element
proc nextUntil*(element: Element, selector: cstring): Element
proc prev*(element: Element): Element
proc prevAll*(element: Element): Element
proc prevUntil*(element: Element, selector: cstring): Element


# ajax
proc load*(element: Element, url , data: cstring ="", complete: proc (response, status, xhr: cstring))
proc get(w: Window = window, u, d: cstring, s: proc(data, status, xhr: cstring))
proc post(w: Window = window, u, d: cstring, c: proc(response, status, xhr: cstring))

# event handlers
proc click*(element: Element, handler: proc(e: JEvent))
proc blur*(element: Element, handler: proc(e: JEvent))
proc change*(element: Element, handler: proc(e: JEvent))
proc dblclick*(element: Element, handler: proc(e: JEvent))
proc focus*(element: Element, handler: proc(e: JEvent))
proc focusin*(element: Element, handler: proc(e: JEvent))
proc focusout*(element: Element, handler: proc(e: JEvent))
proc hover*(element: Element, handler: proc(e: JEvent))
proc keydown*(element: Element, handler: proc(e: JEvent))
proc keypress*(element: Element, handler: proc(e: JEvent))
proc keyup*(element: Element, handler: proc(e: JEvent))
proc mousedown*(element: Element, handler: proc(e: JEvent))
proc mouseenter*(element: Element, handler: proc(e: JEvent))
proc mouseleave*(element: Element, handler: proc(e: JEvent))
proc mousemove*(element: Element, handler: proc(e: JEvent))
proc mouseout*(element: Element, handler: proc(e: JEvent))
proc mouseup*(element: Element, handler: proc(e: JEvent))
proc off*(element: Element, handler: proc(e: JEvent))
proc ready*(element: Element, handler: proc(e: JEvent))
proc resize*(element: Element, handler: proc(e: JEvent))
proc scroll*(element: Element, handler: proc(e: JEvent))
proc select*(element: Element, handler: proc(e: JEvent))
proc submit*(element: Element, handler: proc(e: JEvent))
proc trigger*(element: Element, handler: proc(e: JEvent))
proc triggerHandler*(element: Element, handler: proc(e: JEvent))
{.pop.}

template handler*(fname: untyped) =
  proc fname (e: JEvent){.importcpp inject.}
template function*(fname: untyped) =
  proc fname(){.importcpp inject.}

proc add* (number1, number2: cint): cint = add(n1 = number1, n2 = number2)
proc sub* (number1, number2: cint): cint = sub(n1 = number1, n2 = number2)

#  wrappers
proc jQuery*(s: cstring): Element = jQuery(selector = s)
proc jQuery*(e: Element): Element = jQuery(element = e)
proc jQuery*(d: Document): Element = jQuery(document = d)
proc get*(url, data: cstring, success: proc(data, status, xhr: cstring)) = get(url, data, success)
proc post*(url, data: cstring, complete: proc(data, status, xhr: cstring)) = post(url, data, complete)
proc valInt*(element: Element): cint = valInt(e = element)
proc ths*(e: JEvent): Element = jQuery(e.currentTarget)
proc exec*(function:cstring) = exec(fname = function)
proc eval*(js:cstring) = eval(script = js)
proc natlog*(e: Element) = natlog(element = e)
