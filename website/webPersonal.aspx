<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webPersonal.aspx.cs" Inherits="webPersonal" MasterPageFile="~/MasterPage.master" %>

     
 <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="Stylesheet" type="text/css"href="CSS/Global.css" />
    <link rel="Stylesheet" type="text/css"href="CSS/webPersonal.css" />
    
    <link rel="stylesheet" href="CSS/normalize.css"/>
	<link rel="stylesheet" href="CSS/style.css"/>            <%-- Personal_form --%>
        
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
                     <a href="WriteBlog.aspx" style="color:#808080">New Blog </a>
                         </span>
                </div>
                 <div class ="personal_info_col">
                      <span>
                     <a onclick="popfldiv();" href="#" class="clickthis" style="color:#808080">Upload Image</a>
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
            <div id="personal_blog"  runat="server">
                <asp:label id="testlabel"   runat="server"/>
                <style>                   
                     .divcss
                    {
                         border-style:solid;
                         width:50%;
                         height:100px;
                    }
                    </style>
                <script >
                    function createDiv() {
                        var divs = document.createElement("DIV");	    //动态创建DIV 
                        //var divs = document.getElementById("divs");
                        divs.className = "divcss";
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
                        var aElement = document.createElement("href");
                        aElement.name = inputFileID;
                        aElement.id = inputFileID;
                        aElement.type = "href";
                        divs.applyElement(span);
                        divs.id = "newDiv";
                        
                        document.getElementById("MainContent_personal_blog").appendChild(divs);
                    }
                    createDiv();
</script>
            </div>
            <div id="personal_image" runat="server">             
                 <div id="Div1" class="personal_image_row" runat="server">
                     <asp:label ID="image_label1"  runat="server"/>
                     <br/>
                     <img src="" id="image_1" class="personal_image_row_image" runat="server"/>
                    </div>
                 <div id="Div2"  class="personal_image_row" runat="server">
                    </div>

                </div>
        </div> 
    

     </asp:Content>
