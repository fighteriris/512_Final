<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomeCopy.aspx.cs" Inherits="HomeCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="CSS/Home_page.css" rel="stylesheet" />
	<script>
		window.onload = setInterval("sitebg()", 10000);
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

			// elem.style.display = 'block';
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
			if (sed > 0 && sed <= 10) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/1.jpg') no-repeat";
				//"url('Home_BG/BG1.png') no-repeat";
				//document.body.style.background = "url('1.jpg') repeat-x scroll 0 10px #EFEFEF"
			}
			else if (sed > 10 && sed <= 20) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/2.jpg') no-repeat";
				//"url('Home_BG/BG2.png')";
				//document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
			}
			else if (sed > 20 && sed <= 30) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/3.jpg')no-repeat";
				//"url('Home_BG/BG3.png')";
				//document.body.style.background = "url('images/headerbg_3.png') repeat-x scroll 0 10px #EFEFEF"
			}
			else if (sed > 30 && sed <= 40) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/4.jpg')no-repeat ";
				//"url('Home_BG/BG2.png')";
				//document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
			}
			else if (sed > 40 && sed <= 50) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/5.jpg')no-repeat";
				//"url('Home_BG/BG2.png')";
				//document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
			}
			else if (sed > 50 && sed <= 0) {
				fadeIn(iBase.Id('MainContent_Div1'));
				document.getElementById('MainContent_Div1').style.background = "url('background_image/6.jpg')no-repeat";
				//"url('Home_BG/BG2.png')";
				//document.body.style.background = "url('images/headerbg_2.png') repeat-x scroll 0 10px #EFEFEF"
			}
		}

	</script>
	<div id="Div1" class="Home_content" runat="server" style="FILTER: progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,src='background_image/1.jpg',sizingMethod='scale'); background: url(background_image/7.jpg)no-repeat; background-position: center; height: 800px; left: 0px; right: 0px;">
		<%-- Content --%>
		<br />
		<br />
		<br />
		<br />
		<div id="Home_info" runat="server">
			<%-- Content_1 search part --%>
			<h1 style="color: #FFFFFF; font-family: Arial; font-size: 40px; text-shadow: 10px 10px 25px rgba(0, 0, 0, 0.3); font-size: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A route that we record our journeys.   </h1>
			<div id="Home_search" runat="server">
				<br />
				<br />
				<br />
			</div>
		</div>

		<div id="Home_content" runat="Server">
			<div id="Home_bar" class="Home_search_bar" runat="Server">
				<a class="button" href="#" onclick="window.open('topPhoto.aspx')">
					<br />
					Top Photos </a>
				<a class="button_mid" href="#" onclick="window.open('topBlog.aspx')">
					<br />
					Top Blogs </a>
				<a class="button_l" href="#" onclick="window.open">
					<br />
					click me </a>
				
               <table border="0" cellpadding="0" cellspacing="0" class="tab_search">
	<tr>
		<td>
			<input type="text" name="q" title="Search" class="searchinput" id="searchinput" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='- Search Products -';" onfocus="if(this.value=='- Search Products -')value='';" value="- Search Products -" size="10"/>
		</td>
		<td>
            	<script>

            	    function openmy() {
            	        var q = document.getElementById('searchinput').value;
            	        //alert(q);
            	        window.open('search_result.aspx?search=' + q + '');
            	    }
            </script>
			<input type="image" width="21" height="17" class="searchaction"  onclick="openmy();" alt="Search" src="http://www.codefans.net/jscss/demoimg/201008/magglass.gif" border="0" hspace="2"/>
        
        </td>
	</tr>
</table>

			</div>
		</div>
	</div>
</asp:Content>
