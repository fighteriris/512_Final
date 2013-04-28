<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_result.aspx.cs" Inherits="search_blog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="CSS/search_result.css" rel="stylesheet" />

	<div id="Search_result" class="content" style="width: 85%; margin: 0 auto; height: 1200px; background: #ffffff">

		<div id="Search_blog_photo" style="width: 100%; height: 300px;">
			<img id="imgback" src="Search_Blog.jpg" style="width: 100%; height: 300px; margin: 0 auto;" />
		</div>

		<br />
		<div id="sub_title" style="height: 58px">
			<div style="margin-left: 20%; margin-right: 20%; border-style: solid; padding-left: 18%;">

				<table border="0" cellpadding="0" cellspacing="0" class="tab_search">
					<tr>
						<td>
							<asp:TextBox CssClass="searchinput_n" ID="searchinput" runat="server" />
						</td>
						<td style="width: 61px">
							<asp:ImageButton ID="imageButton" src="http://www.codefans.net/jscss/demoimg/201008/magglass.gif" runat="server" />

						</td>
					</tr>
				</table>
			</div>
		</div>

		<div id="search_blog_result" style="height: 590px; width: 49%; float: left; border: dotted">
			<h3 style="text-align: center">Here is the relevant blogs</h3>
			<script>
				var _blogs = "<%=getBlogInfo()%>";
				var blogs = new Array();
				blogs = _blogs.split("#");

				for (j = 0; j < blogs.length - 1; j++) {
					var contents = new Array();
					contents = blogs[j].split("&");
					document.write("<div class=\"personal_blog_row\">");
					document.write("<a href='single_blog.aspx?id=" + contents[0] + "');\">" + contents[1] + "</a>");
					document.write("<br/>");
					if (contents[2].lastIndexOf("<img") > 0) {
						contents[2] = contents[2].substr(0, contents[2].lastIndexOf("<img"));
					}
					contents[2] = contents[2].replace(/<[^>]+>/g, "");
					document.write("<span style=\"font-size: 10px;\">" + contents[3] + "</span>");
					document.write("<br/>");
					document.write("<span>" + contents[4] + "</span>");
					document.write("<br/>");
					document.write("<span>&nbsp&nbsp&nbsp&nbsp" + contents[2].substr(0, 200) + "&nbsp ... ...");
					document.write("</span>");
					document.write("</div>");
				}
			</script>

		</div>

		<div id="search_photo_result" style="height: 590px; width: 49%; float: right; border: dotted">
			<h3 style="text-align: center">Here is the relevant photos</h3>


		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<hr />
</asp:Content>



