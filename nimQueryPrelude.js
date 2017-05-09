exec = function(fname){
    window[fname]()
}

natlog = function(element) {
    console.log(element)
}

add = function(n1, n2) {
    return (n1/1 + n2/1)
}

sub = function(n1, n2) {
    return (n1/1 - n2/1)
}

valInt = function(element){
    return element.val()
} 

get = function(url, complete) {
    $.get(url, complete)
}

post = function(url, data, success) {
    $.get(url, success)
}
