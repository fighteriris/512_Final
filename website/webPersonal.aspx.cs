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

    public void create() {
        System.Diagnostics.Debug.WriteLine("dddd");
    }
    public string getnum() {
        string x = "6";
        return x;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

		personal_info_col1.Text = User.Identity.Name;
        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection myConn = new SqlConnection(ConStr);
        
        myConn.Open();
        String user = "Shaobin";
        string sqlstr = "select * from [Blog] where [Blog_writer] ='" + user + "'"; 
        SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
        DataSet mydata = new DataSet();
        adapter.Fill(mydata, "result_data");
        myConn.Close();
        int tmp = 0;
       
        foreach (DataRow testRow in mydata.Tables["result_data"].Rows)
        {
           String _title = testRow["Blog_title"].ToString();
           String _date = testRow["Blog_date"].ToString();
           if (_title != null && _date != null)
           {
               tmp++;
           }
        }
        
          
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
    protected void submit_blog_Click(object sender, EventArgs e)
    {
        
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
		String directoryPath = Server.MapPath("Image") + "\\" + User.Identity.Name;
		String relativePath = "Image\\" + User.Identity.Name + "\\" + fileName;
		//Label1.Text = imagePath;
		String imagePath = directoryPath + "\\" + fileName;
		if (!System.IO.Directory.Exists(directoryPath))
		{
			System.IO.Directory.CreateDirectory(directoryPath);
		}

		FileUpload1.SaveAs(imagePath);
		uploadLabel.Text = fileName + " upload complete.";
		string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		SqlConnection myConn = new SqlConnection(ConStr);
		myConn.Open();
		string sqlstr = "INSERT INTO Images values('" + relativePath + "','" + fileName + "','" + img_tags.Text + "','" + User.Identity.Name + "')";
		//System.Diagnostics.Debug.WriteLine(sqlstr);
		SqlCommand testCommand = myConn.CreateCommand();
		testCommand.CommandText = sqlstr;
		try
		{
			testCommand.ExecuteNonQuery();
			uploadLabel.Text = fileName + " upload complete.";
		}
		catch (Exception es)
		{
			uploadLabel.Text = fileName + " already exists.";
		}
    }
}