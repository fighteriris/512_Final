<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_blog.aspx.cs" Inherits="search_blog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	

	<div id="Search_result" class="content" style="width: 85%; margin: 0 auto; height: 1200px; background: #ffffff">

		<div id="Search_blog_photo" style="width: 100%; height: 300px;">
			<img id="imgback" src="Search_Blog.jpg" style="width: 100%; height: 300px; margin: 0 auto;" />
		</div>

        <br />
        <div id="sub_title" style="height: 58px">
            Here is the searching result about
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />

        </div>

        <div id="search_blog_result" style="height:590px;width:49%;float:left;border:dotted">
            <h3 style="text-align:center">Here is the relevant blog</h3>
            

        </div>

        <div id="search_photo_result" style="height:590px;width:49%;float:right;border:dotted">
            <h3 style="text-align:center">Here is the relevant blog</h3>


        </div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<hr />
</asp:Content>



