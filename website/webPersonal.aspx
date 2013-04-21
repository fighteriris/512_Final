<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webPersonal.aspx.cs" Inherits="webPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="Stylesheet" type="text/css"href="CSS/Global.css" />
    <link rel="Stylesheet" type="text/css"href="CSS/webPersonal.css" />
    
    <link rel="stylesheet" href="CSS/normalize.css"/>
	<link rel="stylesheet" href="CSS/style.css"/>
    <title></title>
</head>
    
<body>

    <form id="Personal_form" runat="server" >                                            <%-- Personal_form --%>
        
        <div class="Home_topbar" runat="server">                                           <%-- Personal_topbar --%>
            <div id="Personal_topbar_else">                                                     <%-- logo and other button --%>
                <img id="Personal_logo" src="Home_BG/logo.png"  alt="logo" />
             </div>

        
        </div>
        <div class="content" runat="server">                                            <%-- login part --%>
               
            <div id="left_col" style="border:solid;float:left">
                <div id="Input_new" style="border-style: groove; width:400px;height:355px; float:left">
                   
                    <script type="text/javascript" src="JQ/nicEdit-latest.js"></script>
                     <script>
                         //<![CDATA[
                         bkLib.onDomLoaded(function () { nicEditors.allTextAreas() });
                         //]]>
                     </script>
                   <textarea name="area3" style="width: 300px; height: 100px;">
      
                    </textarea>
                    <br />
                    <br />
                    <asp:TextBox ID="destination" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="submit_blog" runat="server" Text="submit" OnClick="submit_blog_Click" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </div>
                <br />
                <br />
                <div id="add_new_friends" style="border:groove;width:300px;">
                    Add new friends:
                    <br />
                    <asp:TextBox ID="add_new_id" runat="server"></asp:TextBox>
                    <asp:Button ID="add_new_button" runat="server" Text="Add" />
                    <br />
                    <asp:ListBox ID="friends_list" runat="server"></asp:ListBox>

                </div>
            </div>
            <div id="right_col" style="border-style: solid; border-color: inherit; border-width: medium; float:left; width: 741px;">
                <div id="friends_news" style="border: groove; margin-left:auto;margin-right:auto; border-width: medium; width:700px; height:800px;">
                    <h3>Friends's news</h3>
                </div>
                
            </div>

        </div> 
        

    </form>
</body>
</html>
