<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_blog.aspx.cs" Inherits="single_blog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
	<link href="CSS/single_blog.css" rel="stylesheet" />
	<div id="single_blog" class="content">
		<script>
			var _blogs = "<%=getContent()%>";
			var blogs = new Array();
			blogs = _blogs.split("^");
			var thenew = document.createElement('div');
			thenew.className = "single_content";
			thenew.innerHTML = "<h1>" + blogs[0] + "</h1><br/>" + "<h2>" + blogs[2] + "&nbsp" + blogs[3] + "</h2><br/><span>" + blogs[1] + "</span>";

			document.getElementById('single_blog').appendChild(thenew);
			//document.write("<div class=\"single_content\">");
			//document.
			//document.write("<a href=\"\" onclick=\"window.open('single_blog.aspx?id=" + contents[0] + "');\">" + contents[1] + "</a>");
			//document.write("<br/>");
			//document.write("<span>");
			//document.write("</span>");
			//document.write("<br/>");
			//document.write("</div>");

		</script>
		<asp:Button ID="single_blog_comment" runat="server" float="right" Text="Like it" />
	</div>
</asp:Content>
