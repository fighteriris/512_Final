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
   
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected int getNum() {
        String numStr = Request.QueryString["num"];
        int _num = 0;
        if (numStr==null)
        {
            _num = 2;
        }
        else
        {
            _num = Convert.ToInt32(numStr);
        }
        return _num;
    
    }


    protected String getImageInfo()
    {

        int _num = getNum();
        String res = "";
        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection myConn = new SqlConnection(ConStr);
        myConn.Open();
        //string sqlstr = "SELECT * FROM Images where image_tag like '%" + textToSearch + "%' order by image_clickcount DESC";
        string sqlstr = "SELECT top "+_num+" * FROM Images  order by image_clickcount DESC";
        System.Diagnostics.Debug.WriteLine(sqlstr);
        
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
            String imageClickcount = testRow["image_clickcount"].ToString();
            imageClickcount = imageClickcount.Replace("&", " ");
            imageClickcount = imageClickcount.Replace("#", " ");
            res += imagePath + "&" + imageTag + "&" + imageUser + "&" + imageClickcount + "#";
        }

        return res;
    }
}