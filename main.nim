import nimquery, nimqueryergo, dom

proc onLoad() {.exportc.} =
  jQuery("p").setVal("5")


proc hello(e: jQEvent){.exportc.} =
  log(e.currentTarget.innerHtml)
