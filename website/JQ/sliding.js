
		var iBase = {
		    Id: function (name) {
		        return document.getElementById(name);
		    },

		    SetOpacity: function (ev, v) {
		        ev.filters ? ev.style.filter = 'alpha(opacity=' + v + ')' : ev.style.opacity = v / 100;
		    }
		}

function fadeIn(elem, speed, opacity) {

    speed = speed || 20;
    opacity = opacity || 100;

    elem.style.display = 'block';
    iBase.SetOpacity(elem, 0);

    var val = 0;

    (function () {
        iBase.SetOpacity(elem, val);
        val += 5;
        if (val <= opacity) {
            setTimeout(arguments.callee, speed)
        }
    })();
}


function fadeOut(elem, speed, opacity) {

    speed = speed || 20;
    opacity = opacity || 0;

    var val = 100;

    (function () {
        val -= 5;
        if (val >= opacity) {
            setTimeout(arguments.callee, speed);
        } else if (val < 0) {

            elem.style.display = 'none';
        }
    })();
}
function resize(which, max) {
    var elem = document.getElementById(which);
    if (elem == undefined || elem == null) return false;
    if (max == undefined) max = 1200;
    if (elem.width > elem.height) {
        if (elem.width > max) elem.width = max;
    } else {
        if (elem.height > max) elem.height = max;
    }
    return elem;
}



    function sitebg() {

        var d = new Date();
        var sed = d.getSeconds();
        if (sed > 0 && sed <= 8) {
            fadeIn(iBase.Id('Home_content'));
            document.getElementById('Home_content').style.background = resize(url('Home_BG/BG1.png'));
            //"url('Home_BG/BG1.png') no-repeat";
            //document.body.style.background = "url('images/headerbg_1.png') repeat-x scroll 0 10px #EFEFEF"
        } else if (sed > 8 && sed <= 16) {
            fadeIn(iBase.Id('Home_content'));
            document.getElementById('Home_content').style.background = resize(url('Home_BG/BG2.png'));
            //"url('Home_BG/BG2.png')";
            //document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
        } else {
            fadeIn(iBase.Id('Home_content'));
            document.getElementById('Home_content').style.background = resize(url('Home_BG/BG3.png'));
            //"url('Home_BG/BG3.png')";
            //document.body.style.background = "url('images/headerbg_3.png') repeat-x scroll 0 10px #EFEFEF"
        }
    }