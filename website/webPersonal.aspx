<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webPersonal.aspx.cs" Inherits="webPersonal" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link rel="Stylesheet" type="text/css" href="CSS/Global.css" />
	<link rel="Stylesheet" type="text/css" href="CSS/webPersonal.css" />
	<script src="JQ/textualizer.min.js"></script>
	<script src="JQ/textualizer.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="CSS/normalize.css" />
	<link rel="stylesheet" href="CSS/style.css" />
	<%-- Personal_form --%>
	<div class="content" runat="server" style="height: 150px">
		<div id="personal_info" runat="server">
			<div class="personal_info_col">
				<asp:Label ID="personal_info_col1" runat="server" />
			</div>
			<div class="personal_info_col">
				<span>
					<a href="WriteBlog.aspx" style="color: #808080">New Blog </a>
				</span>
			</div>
			<div class="personal_info_col">
				<span>
					<a onclick="popfldiv();" href="#" class="clickthis" style="color: #808080">Images Management</a>
					<script type="text/javascript">
						function popfldiv() {
							document.getElementById('MainContent_personal_upload').style.display = (document.getElementById('MainContent_personal_upload').style.display == 'none') ? 'block' : 'none';// feilong.org/onclick-a-link-popout-div
						}
					</script>
				</span>
			</div>
		</div>

		<div id="personal_upload" class="personal_upload" style="display: none;" runat="server">
			<asp:TextBox ID="img_tags" runat="server" />
			<asp:Label ID="Label1" Text="Tags" runat="server" />
			<asp:FileUpload ID="FileUpload1" runat="server" />
			<asp:Button ID="img_upload" runat="server" Text="Upload" OnClick="img_upload_Click" />
			<asp:Button ID="img_cancel" runat="server" Text="Cancel" />
			<a onclick="popfldiv();" href="#" class="popback">Back</a>
			<asp:Label ID="Upload_re" runat="server" />
			<asp:Label ID="uploadLabel" runat="server" Text=""></asp:Label>

			<div id="delete_pic" class="delete_pic" runat="server">
				<script type="text/javascript">
					var _imgs = "<%=getPath()%>";
					var imgs = new Array();
					imgs = _imgs.split(",");
					for (j = 0; j < imgs.length - 1; j++) {
						document.writeln("<a href=\"single_photo.aspx?path=" + imgs[j] + "\"><img src=\"" + imgs[j] + "\" class=\"delete_pic_i\"/></a>");
					}
				</script>
			</div>

		</div>
		<div id="pic" runat="server">
		</div>

		<div id="personal_image" class="personal_image" runat="server">
			<link type="text/css" href="styles/left.css" rel="stylesheet" />
			<script type="text/javascript" src=" https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
			<script type="text/javascript" src="lib/jquery.jcarousel.min.js"></script>
			<script type="text/javascript" src="lib/jquery.pikachoose.min.js"></script>
			<script>
				$(document).ready(function () {
					$("#pikame").PikaChoose({ carousel: true, carouselVertical: true });
				});
			</script>

			<div id="Div_image" class="personal_image_row" runat="server">
				<asp:Label ID="image_label1" runat="server" />

				<div class="pikachoose">
					<ul id="pikame" class="jcarousel-skin-pika" onload="<%create();%>">
						<script>
							var _imgs = "<%=getPath()%>";
							var imgs = new Array();
							imgs = _imgs.split(",");
							for (j = 0; j < imgs.length - 1; j++) {
								document.write("<li><img src=\"" + imgs[j] + "\"/>");
								document.write("</li>");
							}
						</script>
					</ul>
				</div>
			</div>
		</div>

		<div id="personal_blog" class="personal_blog" runat="server">
			<script>
				var _blogs = "<%=getBlogTitle()%>";
				var blogs = new Array();
				blogs = _blogs.split("#");

				for (j = 0; j < blogs.length - 1; j++) {
					var contents = new Array();
					contents = blogs[j].split("&");
					document.write("<div class=\"personal_blog_row\">");
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
			<div id="Div7" class="personal_blog_row_b" runat="server">
			</div>
		</div>
	</div>
</asp:Content>
