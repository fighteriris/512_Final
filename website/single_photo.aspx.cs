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

		foreach (DataRow testRow in mydata.Tables["result"].Rows)
		{
			String imageUser = testRow["image_name"].ToString();
			String imageTag = testRow["image_tag"].ToString();
			res = imagePath + "^" + imageUser + "^" + imageTag;
			break;
		}

		return res;
	}
}