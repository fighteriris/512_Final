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
    <section class="loginform cf">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div id="Re_Content">
            <ul>
				<li>
					<label for="usermail">Email</label>
					<asp:textbox type="email" name="usermail"  runat="server"/>
				</li>
				<li>
					<label for="password">Password</label>
					<asp:textbox if="password" name="password"  runat="server" />
                        </li>
				<li>
					<asp:button text="Login" type="submit" value="Login" runat="server"/>
				</li>
			</ul>
            </div>
    </form>
        </section>
</body>
</html>
