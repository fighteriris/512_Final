<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_blog.aspx.cs" Inherits="single_blog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
	<link href="CSS/single_blog.css" rel="stylesheet" />
	<div id="single_blog" class="content" style="margin-bottom:200px">
		<script>
			var _blogs = "<%=getContent()%>";
			var blogs = new Array();
			blogs = _blogs.split("^");
			var thenew = document.createElement('div');
			thenew.className = "single_content";
			thenew.innerHTML = "<h1>" + blogs[0] + "</h1><br/>" + "<h2>" + blogs[2] + "&nbsp" + blogs[3] + "</h2><br/><span>" + blogs[1] + "</span>";

			document.getElementById('single_blog').appendChild(thenew);

		</script>
        &nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Button ID="deleteButton" runat="server" float="right" Text="Delete" OnClick="deleteButton_Click" OnClientClick="return confirm('Are you sure to delete this blog? This operation cannot be undoed!');" />
		<asp:Label ID="clickCountLabel"  CssClass="Clickcount"  runat="server" Text="Label"></asp:Label>
	&nbsp;&nbsp;&nbsp;
		<asp:Label ID="likeLabel"  CssClass="Clickcount" runat="server" Text="Label"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton CssClass="singe_img_like" ID="ImageButton1" runat="server" float="right" value="" OnClick="likeButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</asp:Content>
