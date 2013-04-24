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
						    document.getElementById('MainContent_personal_upload').style.display = (document.getElementById('MainContent_personal_upload').style.display == 'none') ? 'block' : 'none';// feilong.org/onclick-a-link-popout-div
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
        <div id="pic" runat="server">
        </div>
       
        <table width="宽度" border="0"> 

</table>



        <div id="personal_image"  class="personal_image" runat="server">
            <link type="text/css" href="../../styles/left.css" rel="stylesheet" />
		<script type="text/javascript" src=" https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script type="text/javascript" src="../../lib/jquery.jcarousel.min.js"></script>
		<script type="text/javascript" src="../../lib/jquery.pikachoose.min.js"></script>
		<script language="javascript">
		    $(document).ready(function () {
		        $("#pikame").PikaChoose({ carousel: true, carouselVertical: true });
		    });
		</script>
           

			<div id="Div_image" class="personal_image_row" runat="server">
				<asp:Label ID="image_label1" runat="server" />
				<div class="pikachoose">
	<ul id="pikame" class="jcarousel-skin-pika" onload="<%create();%>">
        <script>
            
            var numof_img = "<%=getnum()%>";
            alert("ddd=<%=getnum()%>");
            var j = 1;         
                for (j = 1; j < 5; j++) {                  
                    
                    document.write("<li><img src=\"../../"+j+".jpg\" />")
                    document.write("</li>")
                }
         </script> 
      
		</ul>
</div>
				
			</div>
			

		</div>
	    
		<div id="personal_blog" class="personal_blog" runat="server">

            <div id="DIV1" class="personal_blog_row" runat="server">			
                <asp:label ID="title1" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="blog1_con" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div2" class="personal_blog_row" runat="server">
			     <asp:label ID="Label1" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="Label2" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div3" class="personal_blog_row" runat="server">
			 <asp:label ID="Label3" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="Label4" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div4" class="personal_blog_row" runat="server">
			 <asp:label ID="Label5" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="Label6" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div5" class="personal_blog_row" runat="server">
			 <asp:label ID="Label7" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="Label8" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div6" class="personal_blog_row" runat="server">
			 <asp:label ID="Label9" Text="this is a title" Font-Size="Large"  runat="server"/>
                <br/>
                <asp:label id="Label10" Text="this is a content" Font-Size="Small" runat="server"/>
                <br/>
                <a href="single_blog.aspx">Read More</a>
            </div>
            <div id="Div7" class="personal_blog_row_l" runat="server">
			<asp:button Text="Pre" runat="server"/>
                <asp:button Text="Next" runat="server"/>
            </div>
		</div>
		
	</div>


</asp:Content>
