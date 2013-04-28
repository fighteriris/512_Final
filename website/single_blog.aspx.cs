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

		int blogCount = 0;
		String blogWriter = "";
		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			blogCount = (int)testRow["Blog_clickcount"];
			blogWriter = testRow["Blog_writer"].ToString();
			break;
		}
		if (blogWriter.Equals(User.Identity.Name))
		{
			System.Diagnostics.Debug.WriteLine("is writer");
		}
		else
		{
			System.Diagnostics.Debug.WriteLine("not writer");
			deleteButton.Visible = false;
		}
		blogCount++;
		myConn.Open();
		clickCountLabel.Text = "Click-through Rate: " + Convert.ToString(blogCount);
		sqlstr = "UPDATE Blog SET Blog_clickcount = '" + Convert.ToString(blogCount) + "' WHERE Id = '" + blogID + "'";
		SqlCommand testCommand = myConn.CreateCommand();
		testCommand.CommandText = sqlstr;
		try
		{
			testCommand.ExecuteNonQuery();
		}
		catch
		{
			System.Diagnostics.Debug.WriteLine("update SQL error!");
		}
		myConn.Close();
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
		myConn.Close();
		Response.Redirect("webPersonal.aspx", true);
	}
    protected void likeButton_Click(object sender, EventArgs e)
    {

    }
}