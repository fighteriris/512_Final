<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webPersonal.aspx.cs" Inherits="webPersonal" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link rel="Stylesheet" type="text/css" href="CSS/Global.css" />
	<link rel="Stylesheet" type="text/css" href="CSS/webPersonal.css" />

	<link rel="stylesheet" href="CSS/normalize.css" />
	<link rel="stylesheet" href="CSS/style.css" />
	<%-- Personal_form --%>
	<div class="content" runat="server">
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
					<a onclick="popfldiv();" href="#" class="clickthis" style="color: #808080">Upload Image</a>
					<script type="text/javascript">
						function popfldiv() {
							document.getElementById('personal_upload').style.display = (document.getElementById('personal_upload').style.display == 'none') ? 'block' : 'none';// feilong.org/onclick-a-link-popout-div
						}
					</script>
				</span>
			</div>
		</div>
		<div id="personal_upload" runat="server">
			<asp:Label Text="Tags" runat="server" />
			<asp:TextBox ID="img_tags" runat="server" />
			<asp:FileUpload ID="FileUpload1" runat="server" />
			<asp:Button ID="img_upload" runat="server" Text="Upload" OnClick="img_upload_Click" />
			<asp:Button ID="img_cancel" runat="server" Text="Cancel" />
			<a onclick="popfldiv();" href="#" class="popback">Back</a>
			<asp:Label ID="Upload_re" runat="server" />
		</div>
		<div id="personal_blog" class="personal_blog" runat="server">
            <div class="personal_blog_row" runat="server">
			<asp:Label ID="testlabel" runat="server" />
            </div>
            <asp:BulletedList ID="BulletedList1" runat="server">
        </asp:BulletedList>
			<script>
				function createDiv() {
					var divs = document.createElement("DIV");	    //动态创建DIV 
					//var divs = document.getElementById("divs");
					divs.className = "personal_blog_row";
                    /*
					for (var j = 0; j < 3; j++) {
						var uu = "ul" + j;
						uu = document.createElement("UL");
						uu.className = "ul1";
						for (var i = 0; i < 4; i++) {
							var ll = "li" + i;
							var ll = document.createElement("LI");
							ll.className = "li1";
							ll.innerText = "222" + i;
							uu.appendChild(ll);
						}
						divs.appendChild(uu);
					}
					*/
					var span = "span";
					span = document.createElement("span");
					var Lnk = "www.google.com";
					span.innerHTML = '<a href=' + Lnk + '>www.google.com</a>';
					
					//span.onclick.dd();
					divs.appendChild(span);
					divs.id = "newDiv";

					document.getElementById("MainContent_personal_blog").appendChild(divs);
				}
				var i = 0;
				for (i = 0; i < 5; i++) {
				    createDiv();
				}
				function dd() {
				    alert("fufufufufuf u");
				}
			</script>
		</div>
		<div id="personal_image"  class="personal_image" runat="server">
			<div id="Div1" class="personal_image_row" runat="server">
				<asp:Label ID="image_label1" runat="server" />
				<br />
				<img src="" id="image_1" class="personal_image_row_image" runat="server" />
			</div>
			<div id="Div2" class="personal_image_row" runat="server">
			</div>

		</div>
	    
	</div>


</asp:Content>
