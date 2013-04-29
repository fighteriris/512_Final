<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_photo.aspx.cs" Inherits="single_photo" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/single_image.css" rel="stylesheet" />
	<div id="single_photo" class="content">
		<script>
			var _images = "<%=getInfo()%>";
			var images = new Array();
			images = _images.split("^");
			document.write("<li><img src=\"" + images[0] + "\"/>");
			document.write("</li>");
		</script>
        <div>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Button ID="deleteButton" runat="server" float="right" Text="Delete" OnClick="deleteButton_Click" OnClientClick="return confirm('Are you sure to delete this image? This operation cannot be undoed!');"  />
		<asp:Label ID="clickCountLabel" CssClass="Clickcount" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Label ID="likeLabel" CssClass="Clickcount" runat="server" Text="Like:"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton CssClass="singe_img_like" ID="likeButton" runat="server" float="right" value="" OnClick="likeButton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
	</div>
</asp:Content>
