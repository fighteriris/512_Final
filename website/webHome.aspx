<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Global.css" rel="stylesheet" />
		<div class="Home_content" runat="server">
			<%-- Content --%>
			<div id="Home_info" runat="server">
				<%-- Content_1 search part --%>
				<h1 style="">A route that we record our journeys.   </h1>

				<div id="Home_search" runat="server">
					<asp:TextBox ID="Textbox1" runat="server" />
				</div>
			</div>

			<div id="Home_top_blog" runat="server">
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
</asp:Content>
