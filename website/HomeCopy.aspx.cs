using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeCopy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		System.Diagnostics.Debug.WriteLine("UserName: " + User.Identity.Name);
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
}