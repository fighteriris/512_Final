<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webHome.aspx.cs" Inherits="webHome" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><link rel="Stylesheet" type="text/css"href="CSS/Home_page.css" /><link rel="stylesheet" href="CSS/style.css"/><script src="JQ/jquery-1.9.1js"></script><title>Triptracer</title>
</head><body ><form id="Home_form" runat="server" >                            
        <div id="Home_topbar" runat="server">                    
            <div id="Home_topbar_else">
                <img id="Home_logo" src="Home_BG/logo.png"  alt="logo" />
             </div>
            
            <div id="Home_status" runat="server">                                          <%-- Content --%>
           
               
                </div> 
           
        </div>

        <div id="Home_content"  runat="server">                       <%-- Content --%>
            <div id="Home_info" runat="server">                                            <%-- Content_1 search part --%>
                <h1 style="">A route that we record our journeys.   "">A route that we record our journeys.   </h1>

                <div id="Home_search" runat="server">
                    <asp:Textbox runat="server"/>
                </div>

            </div>

            <div id="Home_top_blog" runat="server" >
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
