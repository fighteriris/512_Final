<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_blog.aspx.cs" Inherits="single_blog" MasterPageFile="~/MasterPage.master"%>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <div class="content" >
            <div class="content" id="single_blog_title" style="border:groove;height:400px;width:60%">

            </div>
            <div class="content" id="single_blog_content" style="border:groove;height:400px;width:60%">

            </div>
            <asp:Button ID="single_blog_comment" runat="server" float="right" Text="Like it" />
        </div>  
</asp:Content>
