<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_result.aspx.cs" Inherits="search_blog" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/search_result.css" rel="stylesheet" />

	<div id="Search_result" class="content" style="width: 85%; margin: 0 auto; height: 1200px; background: #ffffff">

		<div id="Search_blog_photo" style="width: 100%; height: 300px;">
			<img id="imgback" src="Search_Blog.jpg" style="width: 100%; height: 300px; margin: 0 auto;" />
		</div>

        <br />
        <div id="sub_title" style="height: 58px">
            <div style="margin-left:20%;margin-right:20%;border-style:solid;padding-left:18%;">
                	
               <table border="0" cellpadding="0" cellspacing="0" class="tab_search">
	<tr>
		<td>
			<input type="text" name="q" title="Search" class="searchinput_n" id="searchinput" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='- Search Products -';" onfocus="if(this.value=='- Search Products -')value='';" value="- Search Products -" size="10"/>
		</td>
		<td style="width: 61px">
            <asp:ImageButton  src="http://www.codefans.net/jscss/demoimg/201008/magglass.gif" runat="server" />
            	
        </td>
	</tr>
</table>
            </div>
        </div>

        <div id="search_blog_result" style="height:590px;width:49%;float:left;border:dotted">
            <h3 style="text-align:center">Here is the relevant blog</h3>
            

        </div>

        <div id="search_photo_result" style="height:590px;width:49%;float:right;border:dotted">
            <h3 style="text-align:center">Here is the relevant blog</h3>


        </div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<hr />
</asp:Content>



