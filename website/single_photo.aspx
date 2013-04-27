<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single_photo.aspx.cs" Inherits="single_photo" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="single_photo" class="content">
    

        <asp:Button ID="likeButton" runat="server" float="right" Text="Like it" />
        <asp:Button ID="deleteButton" runat="server" float="right" Text="Delete"  />
    </div>
</asp:Content>