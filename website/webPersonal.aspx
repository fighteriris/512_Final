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
        <div class="content" runat="server">    
            <div id="personal_info" runat="server">
                
             <div class ="personal_info_col">
                </div>
                 <div class ="personal_info_col">
                     <span>
                     <a href="WriteBlog.aspx">New Blog </a>
                         </span>
                </div>
                 <div class ="personal_info_col">
                      <span>
                     <a onclick="popfldiv();" href="#" class="clickthis">Upload Image</a>
                          <script type="text/javascript">
                              function popfldiv() {
                                  document.getElementById('personal_upload').style.display = (document.getElementById('personal_upload').style.display == 'none') ? 'block' : 'none';// feilong.org/onclick-a-link-popout-div
                              }
</script>
                         </span>
                </div>
                </div>
            <div id="personal_upload" runat="server">
                <asp:label Text="Tags" runat="server"/>
                <asp:textbox ID="img_tags" runat="server"/>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="img_upload" runat="server" Text="Upload" OnClick="img_upload_Click" />
                <asp:Button ID="img_cancel" runat="server" Text="Cancel" />
                <a onclick="popfldiv();" href="#" class="popback">Back</a>
                <asp:label ID="Upload_re" runat="server"/>
                </div>
            <div id="personal_blog" runat="server">

            </div>
            <div id="personal_image" runat="server">
                </div>
        </div> 
        

    </form>
</body>
</html>
