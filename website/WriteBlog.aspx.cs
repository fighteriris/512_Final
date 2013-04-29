using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WriteBlog : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		
	}
	protected void Unnamed6_Click(object sender, EventArgs e)
	{
		bool c_r;
		c_r = check();
		if (c_r == true)
		{
			String Blog_content = myInstance1.InnerText;
			System.Diagnostics.Debug.WriteLine("here " + Blog_content);
			Blog_content = Blog_content.Replace("\'", " ");
			Blog_content = Blog_content.Replace("\"", "\\\"");
			System.Diagnostics.Debug.WriteLine("there " + Blog_content);
			String Blog_title = title_textbox.Text;
			Blog_title = Blog_title.Replace("\"", "\\\"");
			Blog_title = Blog_title.Replace("'", "\'");
			String Blog_tags_tmp = tags_textbox.Text;
			String Blog_tags = null;
			String[] tmp2 = Blog_tags_tmp.Split(';');
			foreach (String i in tmp2)
			{
				Blog_tags += i;
			}
			String Blog_date = System.DateTime.Now.ToString();
			String Blog_writer = User.Identity.Name;
			int flg = blog_acc.SelectedIndex;
			int Blog_acc = 1;
			String Id = System.DateTime.Now.ToString();
			if (flg == 1)
			{
				Blog_acc = 1;
			}
			else
			{
				Blog_acc = 0;
			}
			string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
			SqlConnection myConn = new SqlConnection(ConStr);
			// Output_change.Text = "Loading...";
			myConn.Open();
			if (Blog_title.Length == 0)
			{
				Response.Write("<script>alert(\"The title can not be empty!\");</script>");
				return;
			}
			if (Blog_writer.Length == 0)
			{
				Response.Write("<script>alert(\"You need to login first\");</script>");
				return;
			}
			string sqlstr = "INSERT INTO Blog values('" + Id + "','" + Blog_writer + "','" + Blog_date + "','" + Blog_title + "','" + Blog_content + "','" + Blog_tags + "','" + Blog_acc + "','" + "0" + "','" + "','" + "0" + "')";
			SqlCommand testCommand = myConn.CreateCommand();
			testCommand.CommandText = sqlstr;
			System.Diagnostics.Debug.WriteLine(sqlstr);
			try
			{
				testCommand.ExecuteNonQuery();
			}
			catch (Exception es)
			{

			}
			Response.Redirect("webPersonal.aspx");
		}

	}
	public bool check()
	{
		if (title_textbox.Text != null && myInstance1.InnerText != null && tags_textbox.Text != null)
		{
			return true;
		}
		else
			return false;
	}
	protected void Unnamed5_Click(object sender, EventArgs e)
	{
		Response.Redirect("webPersonal.aspx");
	}
}