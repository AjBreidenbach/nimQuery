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
    $(selector).val(value)
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
load = function(selector, url, data, callback) {
    $(selector).load(url, data, callback)
}

// cb optional
get = function(url, callback) {
    $.get(url, callback)
}

// cb optional, data
post = function(url, data, callback) {
    $.get(url, callback)
}

click = function(selector, callback) {
    $(selector).click(callback(e))
}

blur = function(selector, callback) {
    $(selector).blur(callback(e))
}

change = function(selector, callback) {
    $(selector).change(callback(e))
}

dblclick = function(selector, callback) {
    $(selector).dblclick(callback(e))
}

focus = function(selector, callback) {
    $(selector).focus(callback(e))
}

focusin = function(selector, callback) {
    $(selector).focusin(callback(e))
}

focusout = function(selector, callback) {
    $(selector).focusout(callback(e))
}

hover = function(selector, callback) {
    $(selector).hover(callback(e))
}

keydown = function(selector, callback) {
    $(selector).keydown(callback(e))
}

keypress = function(selector, callback) {
    $(selector).keypress(callback(e))
}

keyup = function(selector, callback) {
    $(selector).keyup(callback(e))
}

mousedown = function(selector, callback) {
    $(selector).mousedown(callback(e))
}

mouseenter = function(selector, callback) {
    $(selector).mouseenter(callback(e))
}

mouseleave = function(selector, callback) {
    $(selector).mouseleave(callback(e))
}

mousemove = function(selector, callback) {
    $(selector).mousemove(callback(e))
}

mouseout = function(selector, callback) {
    $(selector).mouseout(callback(e))
}

mouseover = function(selector, callback) {
    $(selector).mouseover(callback(e))
}

mouseup = function(selector, callback) {
    $(selector).mouseup(callback(e))
}

off = function(selector, callback) {
    $(selector).off(callback(e))
}

on = function(selector, callback) {
    $(selector).on(callback(e))
}

ready = function(selector, callback) {
    $(selector).ready(callback(e))
}

resize = function(selector, callback) {
    $(selector).resize(callback(e))
}

scroll = function(selector, callback) {
    $(selector).scroll(callback(e))
}

select = function(selector, callback) {
    $(selector).select(callback(e))
}

submit = function(selector, callback) {
    $(selector).submit(callback(e))
}

trigger = function(selector, callback) {
    $(selector).trigger(callback(e))
}

triggerHandler = function(selector, callback) {
    $(selector).triggerHandler(callback(e))
}
