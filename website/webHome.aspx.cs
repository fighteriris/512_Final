using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webHome : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void disc_photo_Click(object sender, EventArgs e)
	{
		Response.Redirect("topPhoto.aspx");

	}
	protected void disc_dest_Click(object sender, EventArgs e)
	{
		Response.Redirect("topDest.aspx");
	}
	protected void disc_blog_Click(object sender, EventArgs e)
	{
		Response.Redirect("topBlog.aspx");
	}
	protected void Home_page_signup_Click(object sender, EventArgs e)
	{
		Response.Redirect("Regist.aspx");
	}
}