<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="Stylesheet" type="text/css"href="CSS/Reg_page.css" />
    <link rel="stylesheet" href="CSS/normalize.css"/>
	<link rel="stylesheet" href="CSS/style.css"/>
    <title></title>
</head>
<body>
    <section class="loginform cf" style=" margin-right:20%; margin-left:30%; margin-top:2%;">
    <form id="form1" runat="server"  >
        <div id="regist_page" style="width:460px;  margin-right: 10%; margin-left:10%;">
            <div id="regist_header">
                <h1>Welcome to Travel Tracer! </h1>
                <asp:Label ID="Alert" runat="server" Text="Spend 1 minite to become one of us!" Font="Italic"></asp:Label>
            </div>
            <br />

            <div id="Re_Content">
                
                <ul>
				    <li>
					    <label for="usermail">Email</label>
					    <asp:textbox id="email" type="email" name="usermail"  runat="server"/>
				    </li>
				    <li>
					    <label for="password">Password</label>
					    <asp:textbox id="password" if="password" name="password"  runat="server" />
                    </li>
                    <li>
					    <label for="password">re-Password</label>
					    <asp:textbox ID="re_password" if="re-password" name="password"  runat="server" />
                    </li>
                    <li>
                        <asp:CheckBox ID="gender_m" runat="server" />
                        <asp:Label  runat="server" Text="Male"></asp:Label>
                        <br/>
                        <asp:CheckBox ID="gender_f" runat="server" />
                        <asp:Label  runat="server" Text="Female"></asp:Label>
                    </li>
				    <li>
                        <label for="country">Country</label>
					    <asp:textbox ID="nationality" runat="server" />
                    </li>
				    
				    <li>

					    <asp:button ID="sign_up" text="Sin up" type="submit" value="Login" runat="server" OnClick="sign_up_Click"/>
				    </li>
			    </ul>
            </div>
        </div>
    </form>
    </section>
</body>
</html>
