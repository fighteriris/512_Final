using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class topPhoto : System.Web.UI.Page
{
    public int _num = 1;

    public int num() {
        _num = _num + 1;
        return _num;
    }

	protected void Page_Load(object sender, EventArgs e)
	{

	}
    protected String getImageInfo()
    {
        String res = "";
        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection myConn = new SqlConnection(ConStr);
        myConn.Open();
        //string sqlstr = "SELECT * FROM Images where image_tag like '%" + textToSearch + "%' order by image_clickcount DESC";
        string sqlstr = "SELECT top "+_num+" * FROM Images  order by image_clickcount DESC";
        SqlDataAdapter adapter = new SqlDataAdapter(sqlstr, myConn);
        DataSet mydata = new DataSet();
        adapter.Fill(mydata, "result");
        myConn.Close();

        foreach (DataRow testRow in mydata.Tables["result"].Rows)
        {
            String imagePath = testRow["image_path"].ToString();
            imagePath = imagePath.Replace("&", " ");
            imagePath = imagePath.Replace("#", " ");
            String imageTag = testRow["image_tag"].ToString();
            imageTag = imageTag.Replace("&", " ");
            imageTag = imageTag.Replace("#", " ");
            String imageUser = testRow["image_user"].ToString();
            imageUser = imageUser.Replace("&", " ");
            imageUser = imageUser.Replace("#", " ");
            res += imagePath + "&" + imageTag + "&" + imageUser + "#";
        }

        return res;
    }
}