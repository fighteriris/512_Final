<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="Stylesheet" type="text/css"href="CSS/Home_page.css" />
     <script src="JQ/jquery-1.9.1js"></script>
    <title>Triptracer</title>
    <script type="text/javascript">
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
                iBase.SetOpacity(elem, val);
                val -= 5;
                if (val >= opacity) {
                    setTimeout(arguments.callee, speed);
                } else if (val < 0) {
                   
                    elem.style.display = 'none';
                }
            })();
        }
        </script>
    <script type="text/javascript">

        function sitebg() {
            
            var d = new Date();
            var sed = d.getSeconds();
            if (sed > 0 && sed <= 5) {
                fadeIn(iBase.Id('Home_content'));
                document.getElementById('Home_content').style.background = "url('Home_BG/1.jpg')";
                //document.body.style.background = "url('images/headerbg_1.png') repeat-x scroll 0 10px #EFEFEF"
            } else if (sed > 5 && sed <= 10) {
                fadeIn(iBase.Id('Home_content'));
                document.getElementById('Home_content').style.background = "url('Home_BG/2.jpg')";
                //document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
            } else {
                fadeIn(iBase.Id('Home_content'));
                document.getElementById('Home_content').style.background = "url('homeback.jpg')";
                //document.body.style.background = "url('images/headerbg_3.png') repeat-x scroll 0 10px #EFEFEF"
            }
        }
</script>

</head>
<body onload="setInterval(sitebg,8000)">
    <form id="form1" runat="server">
    <div id="Home_topbar" runat="server">
        <div id="Home_topbar_else">
            </div>
        <div id="Home_login" runat="server">
            <ul>
                <li>
                    <label for="usermail">Email</label>
                    <asp:textbox ID="Home_page_email" runat="server"/>
                    </li>
                <li>
                    <label for="password">Password</label>
                    <asp:textbox ID="Home_page_passwd" runat="server"/>
                    
                    </li>
                <li>
                    <asp:Button ID="Home_page_login" Text="Login" runat="server"/>
                </li>
                </ul>
            </div>    
    </div>

        <div id="Home_content"  runat="server" >
          <div id="Home_info" runat="server">
            <h1>
             A route that we record our journeys.
                </h1>
              <div id="Home_search" runat="server">
                  <asp:Textbox runat="server" Height="28px" Width="204px" BorderStyle="None"/>
                  </div>
            </div>
        </div>
    </form>
</body>
</html>
