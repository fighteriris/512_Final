<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topPhoto.aspx.cs" Inherits="topPhoto" MasterPageFile="~/MasterPage.master" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/topPhoto.css" rel="stylesheet" />

    <div class="content" style="padding-top: 20px; height: 100%; padding-bottom: 30px;">
        <script>
            a();
            function a() {
                var _images = "<%=getImageInfo()%>";
                var images = new Array();
                images = _images.split("#");

                for (j = 0; j < images.length - 1; j++) {
                    var contents = new Array();
                    contents = images[j].split("&");
                    document.write("<div class=\"topPhoto_row\">");
                    document.writeln("<a href=\"single_photo.aspx?path=" + contents[0] + "\"><img class=\"topPhoto_row_image\" src=\"" + contents[0] + "\" class=\"delete_pic_i\"/></a>");
                    document.write("<br/>");
                    document.write("<span style=\"font-size: 10px;\">" + contents[1] + "</span>");
                    document.write("<br/>");
                    
                    document.write("<span style=\"font-size: 10px;\">" + contents[2] + "&nbsp&nbsp&nbsp&nbsp Click-through rate:&nbsp"+contents[3]+"</span>");
                    document.write("<br/>");
                    document.write("</div> ");
                }


            }
            b();
            function b() {
                var b = "<%=getNum()%>";
                document.write("<div class=\"topPhoto_row_l\">");
                var num = eval(b) + eval(2);
                document.write(" <a href=\"topPhoto.aspx?num="+num+"\" Class=\"Searchmore_more\" onclick=\"search_more()\" />_________</a>");
                document.write("</div>");
            }
        </script>

    </div>


</asp:Content>
