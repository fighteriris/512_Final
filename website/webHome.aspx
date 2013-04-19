x<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="Stylesheet" type="text/css"href="CSS/Home_page.css" />
    <link rel="stylesheet" href="CSS/style.css"/>
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

        </script><script type="text/javascript">

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
</script>

</head>
<body onload="setInterval(sitebg,8000)" >
    <form id="Home_form" runat="server" style="width:1200px">                            
        <div id="Home_topbar" runat="server">                    
            <div id="Home_topbar_else">
                <img id="Home_logo" src="Home_BG/logo.png"  alt="logo" />
             </div>
            
            <div id="Home_status" runat="server">                                          <%-- Content --%>
                <ul id="Home_login_table">                                                
                    <li>
                        <label for="usermail">Email</label>
                        <asp:textbox ID="Home_page_email" runat="server"/>
                        </li>
                    <li>
                    
                        <asp:textbox ID="Home_page_passwd" runat="server"/>
                    
                        </li>
                    <li>
                        <asp:Button ID="Home_page_login" Text="Login" runat="server" style="width:80px"/>
                        <asp:Button ID="Homre_page_signup" Text="Sign up" runat="server" Width="80px" OnClick="Home_page_signup_Click"/>
                        </li>

                </ul>
                
                    
            </div> 
           
        </div>

        <div id="Home_content"  runat="server" style="width:1200px">                       <%-- Content --%>
            <div id="Home_info" runat="server">                                            <%-- Content_1 search part --%>
                <h1 style="">A route that we record our journeys.   </h1>

                <div id="Home_search" runat="server">
                    <asp:Textbox runat="server"/>
                </div>

            </div>

            <div id="Home_top_blog" runat="server" >
                <h2>Top Blog</h2>
                <asp:Button ID="disc_blog" runat="server" Text="Discover more" OnClick="disc_blog_Click" />
            </div>

            <div id="Home_top_photo" runat="server">
                <h2>Top Photo</h2>
                <asp:Button ID="disc_photo" runat="server" Text="Discover more" OnClick="disc_photo_Click" />
            </div>

            <div id="Home_top_destination">
                <h2>Top Destination</h2>
                <asp:Button ID="disc_dest" runat="server" Text="Discover more" OnClick="disc_dest_Click" />
                
                
            </div>

        </div>
    </form>
</body>
</html>
