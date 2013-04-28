using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class single_photo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		String imagePath = Request.QueryString["path"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Images where (image_path ='" + imagePath + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		int imageCount = 0;
		String imageUser = "";
		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			imageCount = (int)testRow["image_clickcount"];
			imageUser = testRow["image_user"].ToString();
			String imageTag = testRow["image_tag"].ToString();
			break;
		}

		if (imageUser.Equals(User.Identity.Name))
		{
			System.Diagnostics.Debug.WriteLine("is writer");
		}
		else
		{
			System.Diagnostics.Debug.WriteLine("not writer");
			deleteButton.Visible = false;
		}
		imageCount++;
		myConn.Open();
		clickCountLabel.Text = "Click-through Rate: " + Convert.ToString(imageCount);
		sqlstr = "UPDATE Images SET image_clickcount = '" + Convert.ToString(imageCount) + "' WHERE image_path = '" + imagePath + "'";
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

	protected String getInfo()
	{
		String res = "";
		String imagePath = Request.QueryString["path"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Images where (image_path ='" + imagePath + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		String imageUser = "";
		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			imageUser = testRow["image_name"].ToString();
			String imageTag = testRow["image_tag"].ToString();
			res = imagePath + "^" + imageUser + "^" + imageTag;
			break;
		}

		return res;
	}
	protected void deleteButton_Click(object sender, EventArgs e)
	{
		String imagePath = Request.QueryString["path"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "DELETE FROM Images WHERE image_path = '" + imagePath + "'";
		SqlCommand testCommand = myConn.CreateCommand();
		testCommand.CommandText = sqlstr;
		try
		{
			testCommand.ExecuteNonQuery();
		}
		catch (Exception es)
		{
			System.Diagnostics.Debug.WriteLine("Delete Image Error.");
		}
		myConn.Close();
		Response.Redirect("webPersonal.aspx", true);
	}
}