<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="Home_content" runat="server" style="border-style: solid; border-color: inherit; border-width: medium; left: 1px; margin-top: 36px; width: 100%; height: 1600px; position: absolute; background-image: url('homeback.jpg'); background-repeat: no-repeat">
		<%-- Content --%>
		<div id="Home_info" runat="server">
			<%-- Content_1 search part --%>
			<h1 style="">A route that we record our journeys.   </h1>

			<div id="Home_search" runat="server">
				<asp:TextBox ID="Textbox1" runat="server" />
			</div>
		</div>
	</div>
</asp:Content>
