<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topPhoto.aspx.cs" Inherits="topPhoto" MasterPageFile="~/MasterPage.master" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/topPhoto.css" rel="stylesheet" />

    <div class="content" style="padding-top: 20px; height: 100%; padding-bottom: 30px;">
        <script>
            a();
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
                    document.write("<span style=\"font-size: 10px;\">" + contents[2] + "</span>");
                    document.write("<br/>");
                    document.write("</div>");
                }


            }

            document.write("<div class=\"topPhoto_row_l\">");
            document.write(" <a href=\"\" CssClass=\"Searchmore_more\" onclick=\"search_more()\" />dfdfdfddf</a>");
            document.write("</div>");

            function search_more() {
                var ddd = "<%=num()%>";
            }
         

        </script>

    </div>


</asp:Content>
