getVal = function(selector){
    return $(selector).val();
}

getHtml = function(selector){
    return $(selector).html();
}

getText = function(selector){
    return $(selector).text();
}

setVal = function(selector, value){
    if (typeof selector === "object"){
        selector.val(value)
    }
    else {
        $(selector).val(value)
    }
}

setHtml = function(selector, value){
    $(selector).html(value)
}

setText = function(selector, value){
    $(selector).text(value)
}

append = function(selector, value){
    $(selector).append(value)
}

prepend = function(selector, value){
    $(selector).prepend(value)
}

remove = function(selector, cls) {
    $(selector.remove(cls))
}

empty = function(selector) {
    $(selector).empty()
}

toggleClass = function(selector, cls) {
    $(selector).toggleClass(cls)
}

getCss = function(selector, prop) {
    $(selector).css(prop)
}

setCss = function(selector, prop, value) {
    $(selector).css(prop, value)
}

width = function(selector) {
    $(selector).width()
}

height = function(selector) {
    $(selector).height()
}

innerWidth = function(selector) {
    $(selector).innerWidth()
}

innerHeight = function(selector) {
    $(selector).innerHeight()
}

outerWidth = function(selector) {
    $(selector).outerWidth()
}

outerHeight = function(selector) {
    $(selector).outerHeight()
}

// data and callback are optional
load = function(selector, url, data, fname) {
    $(selector).load(url, data, fname)
}

// cb optional
get = function(url, fname) {
    $.get(url, fname)
}

// cb optional, data
post = function(url, data, fname) {
    $.get(url, fname)
}

click = function(selector, fname) {
    $(selector).click(window[fname])
}

blur = function(selector, fname) {
    $(selector).blur(window[fname])
}

change = function(selector, fname) {
    $(selector).change(window[fname])
}

dblclick = function(selector, fname) {
    $(selector).dblclick(window[fname])
}

focus = function(selector, fname) {
    $(selector).focus(window[fname])
}

focusin = function(selector, fname) {
    $(selector).focusin(window[fname])
}

focusout = function(selector, fname) {
    $(selector).focusout(window[fname])
}

hover = function(selector, fname) {
    $(selector).hover(window[fname])
}

keydown = function(selector, fname) {
    $(selector).keydown(window[fname])
}

keypress = function(selector, fname) {
    $(selector).keypress(window[fname])
}

keyup = function(selector, fname) {
    $(selector).keyup(window[fname])
}

mousedown = function(selector, fname) {
    $(selector).mousedown(window[fname])
}

mouseenter = function(selector, fname) {
    $(selector).mouseenter(window[fname])
}

mouseleave = function(selector, fname) {
    $(selector).mouseleave(window[fname])
}

mousemove = function(selector, fname) {
    $(selector).mousemove(window[fname])
}

mouseout = function(selector, fname) {
    $(selector).mouseout(window[fname])
}

mouseover = function(selector, fname) {
    $(selector).mouseover(window[fname])
}

mouseup = function(selector, fname) {
    $(selector).mouseup(window[fname])
}

off = function(selector, fname) {
    $(selector).off(window[fname])
}

on = function(selector, fname) {
    $(selector).on(window[fname])
}

ready = function(selector, fname) {
    $(selector).ready(window[fname])
}

resize = function(selector, fname) {
    $(selector).resize(window[fname])
}

scroll = function(selector, fname) {
    $(selector).scroll(window[fname])
}

select = function(selector, fname) {
    $(selector).select(window[fname])
}

submit = function(selector, fname) {
    $(selector).submit(window[fname])
}

trigger = function(selector, fname) {
    $(selector).trigger(window[fname])
}

triggerHandler = function(selector, fname) {
    $(selector).triggerHandler(window[fname])
}
