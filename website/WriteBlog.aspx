<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WriteBlog.aspx.cs" Inherits="WriteBlog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link rel="Stylesheet" type="text/css" href="CSS/Global.css" />
	<link rel="Stylesheet" type="text/css" href="CSS/WriteBlog.css" />
	<div class="content" runat="server" style="margin-bottom: 6%; margin-top: 10%">
		<div id="Input_title">
			<asp:Label Text="Title of the new blog : " runat="server" />
			<asp:TextBox ID="title_textbox" runat="server" />
		</div>

		<div id="Input_new">
			<script type="text/javascript" src="JQ/nicEdit-latest.js"></script>
			<script>
				//<![CDATA[
				bkLib.onDomLoaded(function () {
					var myNicEditor = new nicEditor();
					myNicEditor.setPanel('MainContent_myNicPanel');
					myNicEditor.addInstance('MainContent_myInstance1');
				});
				//]]>
			</script>
			<div id="myNicPanel" style="width: 100%;" runat="server">
			</div>
			<textarea id="myInstance1" style="width: 100%; height: 500px; overflow-y: scroll; overflow-x: scroll;" runat="server">
                  </textarea>

			<div id="Input_tags" runat="server">
				<asp:Label Text="The tags(split by ';') :" runat="server" />
				<asp:TextBox ID="tags_textbox" runat="server" />
			</div>
			<div id="Access" runat="server">
				<asp:Label Text="Who can see this : " runat="server" />
				<asp:DropDownList ID="blog_acc" runat="server">
					<asp:ListItem>Public</asp:ListItem>
					<asp:ListItem>Friends</asp:ListItem>
				</asp:DropDownList>

			</div>
			<div class="wb_buttonl" runat="server">
				<asp:Button ID="submitButton" Text="Submit" runat="server" OnClick="Unnamed6_Click" />
			</div>
			<div class="wb_buttonr" runat="server">
				<asp:Button Text="Cancel" runat="server" OnClick="Unnamed5_Click" />
			</div>
			<div style="height: 120px">
			</div>
		</div>
	</div>
</asp:Content>
