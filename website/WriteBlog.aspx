<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WriteBlog.aspx.cs" Inherits="WriteBlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css"href="CSS/Global.css" />
    <link rel="Stylesheet" type="text/css"href="CSS/WriteBlog.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Home_topbar" runat="server">
            <div class="Home_topbar_else">
				<img class="Home_logo" src="Home_BG/logo.png" alt="logo" />
			</div>
        </div>
    <div class="content" runat="server">
        <div id="Input_title">
            <asp:label Text="Title of the new blog : " runat="server"/>
            <asp:Textbox id="title_textbox" runat="server"/>
            </div>
        
    <div id="Input_new">
                   <style type="text/css">
/*<![CDATA[*/
#myInstance1 {
        border: 2px dashed #fff;
        width:100%;
}
.nicEdit-selected {
        border: 2px solid #0026ff !important;
}
 
.nicEdit-panel {
        background-color: #fff !important;
}
 
.nicEdit-button {
        background-color: #fff !important;
}
/*]]>*/
</style>
                    <script type="text/javascript" src="JQ/nicEdit-latest.js"></script>
                     <script>
                         //<![CDATA[
                         bkLib.onDomLoaded(function () {
                             var myNicEditor = new nicEditor();
                             myNicEditor.setPanel('myNicPanel');
                             myNicEditor.addInstance('myInstance1');
                         });
                         //]]>
                     </script>
                     <div id="myNicPanel" style="width: 100%;" runat="server">

                     </div>
                  <textarea id="myInstance1" style="width:100%;height:500px;overflow-y:scroll;overflow-x:scroll;" runat="server">
                  </textarea>
        
        <div id="Input_tags" runat="server">
            <asp:label Text="The tags(split by ';') :" runat="server" />
            <asp:textbox ID="tags_textbox" runat="server"/>
            </div>
        <div id="Access" runat="server">
            <asp:label Text="Who can see this : " runat="server"/>
            <asp:DropDownList ID="blog_acc" runat="server">
                <asp:ListItem>Public</asp:ListItem>
                <asp:ListItem>Friends</asp:ListItem>
            </asp:DropDownList>
            
            </div>
        <div class="wb_buttonl" runat="server">
            <asp:button  Text="Submit" runat="server" OnClick="Unnamed6_Click"/>
            </div>
        <div class="wb_buttonr" runat="server">
            <asp:button Text ="Cancel" runat="server" OnClick="Unnamed5_Click"/>
            </div>
    </div>
        </div>
    </form>
</body>
</html>
