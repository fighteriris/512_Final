<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="Stylesheet" type="text/css" href="CSS/Home_page.css" />
	<link rel="stylesheet" href="CSS/style.css" />
	<script src="JQ/jquery-1.9.1js"></script>
	<title>Triptracer</title>
	<style type="text/css">
		.auto-style1 {
			width: 81px;
		}
		.auto-style2 {
			width: 126px;
		}
	</style>
</head>
<body>
	<form id="Home_form" runat="server">
		<div id="Home_topbar" runat="server">
			<div id="Home_topbar_else">
				<img id="Home_logo" src="Home_BG/logo.png" alt="logo" />
			</div>

			<div id="Home_status" runat="server">
				<%-- Content --%>
				<ul id="Home_login_table">
					<li>
						<asp:Login ID="Login1" runat="server">
							<LayoutTemplate>
									<table cellpadding="0">
										<tr>
											<td align="right">
												<asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Width="81px">User Name:</asp:Label>
											</td>
											<td class="auto-style2">
												<asp:TextBox ID="UserName" runat="server"></asp:TextBox>
												<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
											</td>
											<td align="right">
												<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
											</td>
											<td>
												<asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
												<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
											</td>
											<td align="center" style="color: Red;">
												<asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
											</td>
											<td align="center" class="auto-style1">
												
												<asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
											
											</td>
											<td align="right">
												<asp:Button ID="SignupButton" runat="server" Text="Sign up" PostBackUrl="~/website/Regist.aspx"/>
											</td>
										</tr>
									</table>
							</LayoutTemplate>
						</asp:Login>
					</li>
				</ul>
			</div>
		</div>

		<div id="Home_content" runat="server">
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
	</form>
</body>
</html>
