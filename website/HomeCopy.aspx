﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomeCopy.aspx.cs" Inherits="HomeCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="Div1" class="Home_content" runat="server" style="background-image:url('homeback2.jpg'); height:800px">
		<%-- Content --%>
                <br />
                <br />
                <br />
                <br />
		<div id="Home_info" runat="server">
			<%-- Content_1 search part --%>
			<h1 style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A route that we record our journeys.   </h1>

			<div id="Home_search" runat="server">
			    <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />            
             
			</div>
		</div>

		<div id="Home_top_blog" runat="server">
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="Textbox1" runat="server" Width="285px" Height="40px" BorderColor="White" BorderStyle="Outset" />
			
			<asp:Button ID="disc_blog" runat="server" Text="Discover top blogs" OnClick="disc_blog_Click" Height="40px" Width="180px" BackColor="White" BorderStyle="Outset" />
			
			<asp:Button ID="disc_photo" runat="server" Text="Discover top photos" OnClick="disc_photo_Click" Height="40px" Width="180px" BackColor="White" BorderStyle="Outset" />
			
			<asp:Button ID="disc_dest" runat="server" Text="Discover top destinations " OnClick="disc_dest_Click" Height="40px" Width="280px" BackColor="White" BorderStyle="Outset"/>
		</div>

		<div id="Home_top_photo" runat="server">
			
		</div>

		<div id="Home_top_destination">
			
		</div>
	</div>
</asp:Content>
