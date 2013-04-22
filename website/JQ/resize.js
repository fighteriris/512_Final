
function resize_1(which, max) {
    var elem = document.getElementById(which);
    if (elem == undefined || elem == null) return false;
    if (max == undefined) max = 280;
    if (elem.width > elem.height) {
        if (elem.width > max) elem.width = max;
    } else {
        if (elem.height > max) elem.height = max;
    }
}


function resize_2(which, max) {
    var elem = document.getElementById(which);
    if (elem == undefined || elem == null) return false;
    if (max == undefined) max = 590;
    if (elem.width > elem.height) {
        if (elem.width > max) elem.width = max;
    } else {
        if (elem.height > max) elem.height = max;
    }
}
