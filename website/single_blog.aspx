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

		</script>
		<asp:Button ID="likeButton" runat="server" float="right" Text="Like it" />
		<asp:Button ID="deleteButton" runat="server" float="right" Text="Delete" OnClick="deleteButton_Click" OnClientClick="return confirm('Are you sure to delete this blog? This operation cannot be undoed!');" />
	</div>
</asp:Content>
