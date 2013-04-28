<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_photo.aspx.cs" Inherits="single_photo" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<div id="single_photo" class="content">
		<script>
			var _images = "<%=getInfo()%>";
			var images = new Array();
			images = _images.split("^");
			document.write("<li><img src=\"" + images[0] + "\"/>");
			document.write("</li>");
		</script>

		<asp:Button ID="likeButton" runat="server" float="right" Text="Like it" />
		<asp:Button ID="deleteButton" runat="server" float="right" Text="Delete" OnClick="deleteButton_Click" OnClientClick="return confirm('Are you sure to delete this image? This operation cannot be undoed!');"  />
		<asp:Label ID="clickCountLabel" runat="server" Text="Label"></asp:Label>
	</div>
</asp:Content>
