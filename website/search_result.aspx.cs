using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class search_blog : System.Web.UI.Page
{
	protected void Page_Init(object sender, EventArgs e)
	{
		String searchString = Request.QueryString["search"];
		searchinput.Text = searchString;
	}

	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected String getBlogInfo()
	{
		String res = "";
		String textToSearch = searchinput.Text;
		if (textToSearch.Length == 0)
		{
			return null;
		}
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Blog where Blog_title like '%" + textToSearch + "%' or Blog_content like '%" + textToSearch + "%' order by Blog_clickcount DESC";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		System.Diagnostics.Debug.WriteLine("test here: ");
		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			String blogID = testRow["Id"].ToString();
			blogID = blogID.Replace("&", " ");
			blogID = blogID.Replace("#", " ");
			String blogTitle = testRow["Blog_title"].ToString();
			blogTitle = blogTitle.Replace("&", " ");
			blogTitle = blogTitle.Replace("#", " ");
			String blogContent = testRow["Blog_content"].ToString();
			blogContent = blogContent.Replace("&", " ");
			blogContent = blogContent.Replace("#", " ");
			String blogDate = testRow["Blog_date"].ToString();
			blogDate = blogDate.Replace("&", " ");
			blogDate = blogDate.Replace("#", " ");
			String blogUser = testRow["Blog_writer"].ToString();
			blogUser = blogUser.Replace("&", " ");
			blogUser = blogUser.Replace("#", " ");
			res += blogID + "&" + blogTitle + "&" + blogContent + "&" + blogDate + "&" + blogUser + "#";
		}

		return res;
	}
	protected void imageButton_Click(object sender, ImageClickEventArgs e)
	{
		Response.Redirect("search_result.aspx", false);
	}
}