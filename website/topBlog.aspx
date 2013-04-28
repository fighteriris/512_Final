<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topBlog.aspx.cs" Inherits="topBlog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/topBlog.css" rel="stylesheet" />
	<div id="Top_blog_header">
		<h1 style="font-style: italic; color: blue; font-weight: 200;">Blog List</h1>
		<%-- header background goes here --%>
	</div>

	<div id="Top_blog_content" style="width: 85%; margin: 0 auto; height:auto;padding-bottom:10%;">

		<div id="Top_blog_photo" style="width: 100%; height: 300px;">
			<img id="imgback" src="background_image/1.jpg" style="width: 100%; height: 300px; margin: 0 auto;" />
		</div>
        <div id="Top_blog_row"  style="height:auto;" runat="server"/>
        <script>
            var _blogs = "<%=getBlogTitle()%>";
            var blogs = new Array();
            blogs = _blogs.split("#");

            for (j = 0; j < blogs.length - 1; j++) {
                var contents = new Array();
                contents = blogs[j].split("&");
                document.write("<div class=\"Top_blog_row\">");
                document.write("<a href='single_blog.aspx?id=" + contents[0] + "');\">" + contents[1] + "</a>");
                document.write("<br/>");
                if (contents[2].lastIndexOf("<img") > 0) {
                    contents[2] = contents[2].substr(0, contents[2].lastIndexOf("<img"));
                }
                contents[2] = contents[2].replace(/<[^>]+>/g, "");
                document.write("<span style=\"font-size: 10px;\">" + contents[3] + "</span>");
                document.write("<br/>");
                document.write("<span>&nbsp&nbsp&nbsp&nbsp" + contents[2].substr(0, 200) + "&nbsp ... ...");
                document.write("</span>");
                document.write("</div>");
            }
			</script>
            </div>

	</div>

	<br />
	<br />
	<br />
	<br />
	<hr />

</asp:Content>
