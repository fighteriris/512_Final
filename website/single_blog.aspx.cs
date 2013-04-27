using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class single_blog : System.Web.UI.Page
{
	public string a;
	protected void Page_Load(object sender, EventArgs e)
	{
		String blogID = Request.QueryString["id"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Blog where (Id ='" + blogID + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			String blogTitle = testRow["Blog_title"].ToString();
			String blogContent = testRow["Blog_content"].ToString();
			//title.Text = blogTitle + "\n" + blogContent;
			break;
		}
	}

	public String getContent()
	{
		string res = "";
		String blogID = Request.QueryString["id"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Blog where (Id ='" + blogID + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			String blogTitle = testRow["Blog_title"].ToString();
			String blogContent = testRow["Blog_content"].ToString();
			String blogWriter = testRow["Blog_writer"].ToString();
			String blogDate = testRow["Blog_date"].ToString();
			//title.Text = blogTitle + "\n" + blogContent;
			//break;
			res = blogTitle + "^" + blogContent + "^" + blogWriter + "^" + blogDate;
		}
		System.Diagnostics.Debug.WriteLine("res " + res);
		return res;
	}

	protected void deleteButton_Click(object sender, EventArgs e)
	{
		String blogID = Request.QueryString["id"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "DELETE FROM Blog WHERE Id = '" + blogID + "'";
		SqlCommand testCommand = myConn.CreateCommand();
		testCommand.CommandText = sqlstr;
		try
		{
			testCommand.ExecuteNonQuery();
		}
		catch (Exception es)
		{
			System.Diagnostics.Debug.WriteLine("Delete Blog Error.");
		}
		Response.Redirect("webPersonal.aspx", true);
	}
}