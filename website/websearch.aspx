<%@ Page Language="C#" AutoEventWireup="true" CodeFile="websearch.aspx.cs" Inherits="search_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="Stylesheet" type="text/css" href="CSS/search_page.css" />
	<title></title>
</head>
<body>
	<form id="Search_form" runat="server" style="width: 1500px">
		<div id="Search_topbar" runat="server">
			<%-- Search_topbar --%>
			<div id="Search_topbar_else">
				<%-- logo and other button --%>
				<img id="Search_logo" src="Home_BG/logo.png" alt="logo" />
			</div>

			<div id="Search_login" runat="server">
				<%-- login part --%>
                xucongcong    log out
			</div>
		</div>

		<div id="Search_content" runat="server">
			<%-- login part --%>

			<div id="Search_img" runat="server">
				<img id="Destination_image" src="Home_BG/boston_1.jpg" alt="background" style="width: 1200px; height: 400px" />
			</div>

			<div id="Search_top_photo" runat="server">
				<h2>Search Top photo</h2>
			</div>

			<div id="Search_top_blog" runat="server">
				<h2>Search Top blog</h2>
			</div>

		</div>
	</form>
</body>
</html>
