<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="Stylesheet" type="text/css"href="CSS/Home_page.css" />
    <title>Triptracer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Home_topbar" runat="server">    
    </div>
        <div id="Home_content" runat="server">
          <div id="Home_info" runat="server">
            <h1>
             A route that we record our journeys.
                </h1>
              <div id="Home_search" runat="server">
                  <asp:Textbox runat="server" Height="28px" Width="204px" BorderStyle="None"/>
                  </div>
            </div>
        </div>
    </form>
</body>
</html>
