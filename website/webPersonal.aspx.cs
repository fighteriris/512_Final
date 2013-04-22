using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webPersonal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_blog_Click(object sender, EventArgs e)
    {
        
    }
    protected void img_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName.ToString() != null && img_tags!=null)
        {
            Byte[] Image_byte = FileUpload1.FileBytes;
            String Image_user = "Shaobin";
            String Image_date;
            String[] tags_tmp = img_tags.Text.Split(';');
            String Image_tags=null;
            int Id = 22222;
            System.DateTime currentTime = new System.DateTime();
            Image_date = currentTime.ToString("g");
            foreach(String i in tags_tmp){
                Image_tags += i;
            }
            string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(ConStr);
            myConn.Open();
            string sqlstr = "INSERT INTO Image values('" + Id + "','" + Image_byte + "','" + Image_date + "','" + Image_user + "','" + Image_tags + "')";
            SqlCommand testCommand = myConn.CreateCommand();
            testCommand.CommandText = sqlstr;
            try
            {
                testCommand.ExecuteNonQuery();
                Upload_re.Text = "Upload Sucess";
            }
            catch (Exception es)
            {
                Upload_re.Text = "Upload failed";
            }
        }
    }
}