using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class webPersonal : System.Web.UI.Page
{
	public String getPath()
	{
		if (User.Identity.Name.Length == 0)
		{
			return null;
		}
		String res = "";
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "SELECT * FROM Images where (image_user ='" + User.Identity.Name + "')";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result");
		myConn.Close();

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			String pathStr = testRow["image_path"].ToString();
			res += pathStr + ",";
		}

		return res;
	}
	public void create()
	{
		
	}
	public string getnum()
	{
		string x = "6";
		return x;
	}

	public String getBlogTitle()
	{
		String res = "";
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);

		myConn.Open();
		String user = User.Identity.Name;
		string sqlstr = "select * from [Blog] where [Blog_writer] ='" + user + "'";
		SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
		DataSet mydata = new DataSet();
		adapter.Fill(mydata, "result_data");
		myConn.Close();
		int tmp = 0;

		foreach (DataRow testRow in mydata.Tables["result_data"].Rows)
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
			res += blogID + "&" + blogTitle + "&" + blogContent + "&" + blogDate + "#";
			tmp++;
		}

		return res;
	}

	protected void Page_Load(object sender, EventArgs e)
	{
		personal_info_col1.Text = User.Identity.Name;
		//SqlCommand testCommand = myConn.CreateCommand();
		//testCommand.CommandText = sqlstr;
		/*
		try
		{
			testCommand.ExecuteNonQuery();
			Upload_re.Text = "Upload Sucess";
		}
		catch (Exception es)
		{
			Upload_re.Text = "Upload failed";
		}
		 */
	}

	protected void img_upload_Click(object sender, EventArgs e)
	{
		uploadLabel.Text = "";
		if (User.Identity.Name.Length == 0)
		{
			uploadLabel.Text = "Please login first to upload images!";
			return;
		}
		if (img_tags.Text.Length == 0)
		{
			uploadLabel.Text = "Please input a tag to describe the image.";
			return;
		}
		String fileName = FileUpload1.FileName;
		if (fileName.Length == 0)
		{
			uploadLabel.Text = "The File Name cannot be empty";
			return;
		}
		String fileType = fileName.Substring(fileName.LastIndexOf(".") + 1);
		if ((fileType == "jpg") || (fileType == "png") || (fileType == "gif") || (fileType == "bmp") ||
			(fileType == "ico"))
		{
			uploadLabel.Text = "valid image";
		}
		else
		{
			uploadLabel.Text = "Please upload a valid image";
			return;
		}
		String directoryPath = Server.MapPath("Image") + "/" + User.Identity.Name;
		String relativePath = "Image/" + User.Identity.Name + "/" + fileName;
		//Label1.Text = imagePath;
		String imagePath = directoryPath + "/" + fileName;
		if (!System.IO.Directory.Exists(directoryPath))
		{
			System.IO.Directory.CreateDirectory(directoryPath);
		}

		uploadLabel.Text = fileName + " upload complete.";
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "INSERT INTO Images values('" + relativePath + "','" + fileName + "','" + img_tags.Text + "','" + User.Identity.Name + "','" + "0" + "','" + "0" + "','" + "')";
		SqlCommand testCommand = myConn.CreateCommand();
		testCommand.CommandText = sqlstr;
		try
		{
			System.Diagnostics.Debug.WriteLine(sqlstr);
			testCommand.ExecuteNonQuery();
			uploadLabel.Text = fileName + " upload complete.";
			FileUpload1.SaveAs(imagePath);
		}
		catch (Exception es)
		{
			System.Diagnostics.Debug.WriteLine(sqlstr);
			uploadLabel.Text = fileName + " already exists.";
		}
	}
}