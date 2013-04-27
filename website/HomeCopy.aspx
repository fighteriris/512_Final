<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomeCopy.aspx.cs" Inherits="HomeCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="Div1" class="Home_content" runat="server" style="background-image: url('homegif2.gif'); height: 650px; left: 0px; right: 0px;">
		<%-- Content --%>
		<br />
		<br />
		<br />
		<br />
		<div id="Home_info" runat="server">
			<%-- Content_1 search part --%>
			<h1 style="color: #FFFFFF; font-size: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A route that we record our journeys.   </h1>
			<div id="Home_search" runat="server">
				<br />
				<br />
				<br />
			</div>
		</div>

		<div id="Home_content" runat="Server">
			<div id="Home_bar" runat="Server" style="margin: 0 180px; width: 1400px;">
				<asp:Button ID="disc_blog" runat="server" Text="Discover top blogs" OnClick="disc_blog_Click" Height="40px" Width="180px" BackColor="White" BorderStyle="Outset" Font-Size="Medium" ForeColor="#3399FF" />
				<asp:Button ID="disc_photo" runat="server" Text="Discover top photos" OnClick="disc_photo_Click" Height="40px" Width="180px" BackColor="White" BorderStyle="Outset" Font-Size="Medium" ForeColor="#3399FF" />
				<asp:Button ID="disc_dest" runat="server" Text="Discover top destinations " OnClick="disc_dest_Click" Height="40px" Width="280px" BackColor="White" BorderStyle="Outset" Font-Size="Medium" ForeColor="#3399FF" />
				<asp:TextBox ID="Textbox1" runat="server" Width="200px" Height="35px" BorderColor="White" BorderStyle="Outset" />
				<asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/search icon.jpg" Width="30px" ImageAlign="Middle" />
			</div>
		</div>
	</div>
</asp:Content>
