<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<section class="loginform cf" style="margin-right: 20%; margin-left: 35%; margin-top: 2%; height: 452px; margin-top: 70px;">
		<div id="regist_page" style="width: 404px; margin-right: 10%; margin-left: 10%;">
			<div id="regist_header">
				<h1>Welcome to Travel Tracer! </h1>
				<asp:Label ID="Alert" runat="server" Text="Spend 1 minite to become one of us!" Font="Italic"></asp:Label>
				<br />
			</div>
			<br />
			<div id="Re_Content">
				<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="334px" Width="320px" ActiveStepIndex="1" ContinueDestinationPageUrl="~/HomeCopy.aspx">
					<WizardSteps>
						<asp:CreateUserWizardStep runat="server" />
						<asp:CompleteWizardStep runat="server" />
					</WizardSteps>
				</asp:CreateUserWizard>
			</div>
		</div>
	</section>
</asp:Content>
