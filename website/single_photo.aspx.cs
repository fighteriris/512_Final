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
		int likeCount = 0;
		String imageUser = "";

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			imageCount = (int)testRow["image_clickcount"];
			imageUser = testRow["image_user"].ToString();
			likeCount = (int)testRow["image_like"];
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
		likeLabel.Text = "Like: " + likeCount.ToString();
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
		System.Diagnostics.Debug.WriteLine(sqlstr);
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
	protected void likeButton_Click(object sender, EventArgs e)
	{
		int imageLike = 0;
		String imageLikeUser = null;
		String imagePath = Request.QueryString["path"];
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Images where (image_path ='" + imagePath + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			imageLikeUser = testRow["image_likeuser"].ToString();
			imageLike = (int)testRow["image_like"];
			break;
		}
        if(User.Identity.Name.Equals(null)){
            return;
        }
		String[] userlike = imageLikeUser.Split(';');
		bool exist = false;
			
		foreach (String i in userlike)
		{
			System.Diagnostics.Debug.WriteLine("String: " + i);
			if (i.Equals(User.Identity.Name.ToString()))
			{
				exist = true;
				break;
			}
		}
		if (imageLikeUser.Length == 0)
		{
			exist = false;
		}
		if (!exist)
		{
			System.Diagnostics.Debug.WriteLine("not exist");
			imageLike = imageLike + 1;
			myConn.Open();
			imageLikeUser = imageLikeUser + ";" + User.Identity.Name.ToString();
			string sqlstr_like = "UPDATE Images SET image_like = '" + imageLike + "' , image_likeuser = '" + imageLikeUser + "' WHERE image_path = '" + imagePath + "'";
			SqlCommand testCommand = myConn.CreateCommand();
			testCommand.CommandText = sqlstr_like;
			System.Diagnostics.Debug.WriteLine("sql: " + sqlstr_like);
			try
			{
				testCommand.ExecuteNonQuery();
				likeLabel.Text = "Like: " + imageLike.ToString();
			}
			catch (Exception es)
			{
				System.Diagnostics.Debug.WriteLine("Delete Image Error.");
			}
			myConn.Close();
			System.Diagnostics.Debug.WriteLine("sql finished");
		}
	}
}