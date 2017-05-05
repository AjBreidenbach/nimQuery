import jWrap, dom

proc goodbye(e: Event) =
  log("bye")
 
proc onLoad() {.exportc.} =
  "p".click(goodbye)
 

