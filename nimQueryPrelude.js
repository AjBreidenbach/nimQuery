getValInt = getVal = function(element){
    return element.val();
}


getHtml = function(element){
    return element.html();
}

getText = function(element){
    return element.text();
}

setVal = function(element, value){
    element.html(value)
}

setHtml = function(element, value){
    element.html(value)
}

setText = function(element, value){
    element.text(value)
}

append = function(element, value){
    element.append(value)
}

prepend = function(element, value){
    element.prepend(value)
}

remove = function(element, cls) {
    element.remove(cls)
}

empty = function(element) {
    element.empty()
}

toggleClass = function(element, cls) {
    element.toggleClass(cls)
}

getCss = function(element, prop) {
    element.css(prop)
}

setCss = function(element, prop, value) {
    element.css(prop, value)
}

width = function(element) {
    element.width()
}

height = function(element) {
    element.height()
}

innerWidth = function(element) {
    element.innerWidth()
}

innerHeight = function(element) {
    element.innerHeight()
}

outerWidth = function(element) {
    element.outerWidth()
}

outerHeight = function(element) {
    element.outerHeight()
}

// data and callback are optional
load = function(element, url, data, fname) {
    element.load(url, data, window[fname])
}

// cb optional
get = function(url, fname) {
    $.get(url, window[fname])
}

// cb optional, data
post = function(url, data, fname) {
    $.get(url, window[fname])
}

click = function(element, fname) {
    if (typeof fname === "function"){
        element.click(fname)
    }
    else{
        element.click(window[fname])
    }
}

blur = function(element, fname) {
    element.blur(window[fname])
}

change = function(element, fname) {
    element.change(window[fname])
}

dblclick = function(element, fname) {
    element.dblclick(window[fname])
}

focus = function(element, fname) {
    element.focus(window[fname])
}

focusin = function(element, fname) {
    element.focusin(window[fname])
}

focusout = function(element, fname) {
    element.focusout(window[fname])
}

hover = function(element, fname) {
    element.hover(window[fname])
}

keydown = function(element, fname) {
    element.keydown(window[fname])
}

keypress = function(element, fname) {
    element.keypress(window[fname])
}

keyup = function(element, fname) {
    element.keyup(window[fname])
}

mousedown = function(element, fname) {
    element.mousedown(window[fname])
}

mouseenter = function(element, fname) {
    element.mouseenter(window[fname])
}

mouseleave = function(element, fname) {
    element.mouseleave(window[fname])
}

mousemove = function(element, fname) {
    element.mousemove(window[fname])
}

mouseout = function(element, fname) {
    element.mouseout(window[fname])
}

mouseover = function(element, fname) {
    element.mouseover(window[fname])
}

mouseup = function(element, fname) {
    element.mouseup(window[fname])
}

off = function(element, fname) {
    element.off(window[fname])
}

on = function(element, fname) {
    element.on(window[fname])
}

ready = function(element, fname) {
    element.ready(window[fname])
}

resize = function(element, fname) {
    element.resize(window[fname])
}

scroll = function(element, fname) {
    element.scroll(window[fname])
}

select = function(element, fname) {
    element.select(window[fname])
}

submit = function(element, fname) {
    element.submit(window[fname])
}

trigger = function(element, fname) {
    element.trigger(window[fname])
}

triggerHandler = function(element, fname) {
    element.triggerHandler(window[fname])
}


hide = function(element, speed, fname){
    element.hide(speed, window[fname])
}

show = function(element, speed, fname){
    element.show(speed, window[fname])
}

toggle = function(element, speed, fname){
    element.toggle(speed, window[fname])
}

fadeIn = function(element, speed, fname){
    element.fadeIn(speed, window[fname])
}


fadeOut = function(element, speed, fname){
    element.fadeOut(speed, window[fname])
}


fadeToggle = function(element, speed, fname){
    element.fadeToggle(speed, window[fname])
}


fadeTo = function(element, speed, opacity, fname){
    element.toggle(speed, opacity, window[fname])
}

slideUp = function(element, speed, fname){
    element.slideUp(speed, window[fname])
}


slideDown = function(element, speed, fname){
    element.slideDown(speed, window[fname])
}


slideToggle = function(element, speed, fname){
    element.slideToggle(speed, window[fname])
}
