<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

	<section class="loginform cf" style="margin-right: 20%; margin-left: 35%; margin-top: 2%; margin-top: 70px;">
		<link href="CSS/Reg_page.css" rel="stylesheet" />
		<div id="login_page">
			<disv id="regist_header">
				<h1>Welcome to Travel Tracer! </h1>
				<br />
			</disv>
			<br />

			<div id="Re_Content">
				<ul>
					<asp:Login ID="Login1" runat="server" DestinationPageUrl="~/HomeCopy.aspx">
						<LayoutTemplate>
							<table style="border-collapse: collapse;">
								<tr>
									<td>
										<table>
											<tr>
												<td align="center" colspan="2">Log In</td>
											</tr>
											<tr>
												<td align="right">
													<asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
												</td>
												<td>
													<asp:TextBox ID="UserName" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
												</td>
											</tr>
											<tr>
												<td align="right">
													<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
												</td>
												<td>
													<asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
													<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
												</td>
											</tr>
											<tr>
												<td align="center" colspan="2" style="color: Red;">
													<asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
												</td>
											</tr>
											<tr>
												<td align="right" colspan="2">
													<asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</LayoutTemplate>
					</asp:Login>
				</ul>
			</div>
		</div>
	</section>
</asp:Content>
