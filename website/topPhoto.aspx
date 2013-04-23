<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topPhoto.aspx.cs" Inherits="topPhoto" MasterPageFile="~/MasterPage.master" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
	<div id="top_photo_header">
		<h1 style="font-style: italic; color: blue; font-weight: 200;">Discover the World</h1>
		<%-- header background goes here --%>
	</div>

	<div id="topPhoto_content" style="width: 1200px; height: 500px">

		<div id="top_photo_col_1" style="border: solid; width: 290px; height: 500px; float: left;">
			<div id="c1_1" style="border: groove">
				<img id="img_c1_1" onload="resize_1('img_c1_1')" src="Home_BG/BG1.png" />
				<p style="float: right">-by xxxxxx</p>
			</div>
			<div id="c1_2" style="border: groove">
				<img id="img_c1_2" onload="resize_1('img_c1_2')" src="Home_BG/BG2.png" />
				<p style="float: right">-by Ying Wang</p>
			</div>
		</div>

		<div id="top_photo_col_2" style="border: solid; width: 600px; height: 500px; float: left;">
			<div id="c2_1" style="border: groove">
				<img id="img_c2_1" onload="resize_2('img_c2_1')" src="Home_BG/BG3.png" />
				<p style="float: right">-by DSB</p>
				<asp:Button ID="like" runat="server" Text="Like it" Style="border-style: none; width: 124px; height: 35px; background-repeat: no-repeat; margin-left: 40%;" />
			</div>

		</div>
		<div id="top_photo_col_3" style="border: solid; width: 290px; height: 500px; float: left;">
		</div>

	</div>
	<br />
	<br />
	<br />
	<br />
	<hr />
</asp:Content>
