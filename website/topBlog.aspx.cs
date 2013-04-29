﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class topBlog : System.Web.UI.Page
{
    public int topnum = 10;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public String getBlogTitle()
    {
        String res = "";
        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection myConn = new SqlConnection(ConStr);
        String _num = topnum.ToString();
        myConn.Open();
       // String user = User.Identity.Name;
        string sqlstr = "select  top "+ _num + " * from [Blog] order by [Blog_clickcount] DESC";
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
            String blogwriter = testRow["Blog_writer"].ToString();
            blogwriter = blogwriter.Replace("&", " ");
            blogwriter = blogwriter.Replace("#", " ");
            String blogck = testRow["Blog_clickcount"].ToString();
            blogck = blogck.Replace("&", " ");
            blogck = blogck.Replace("#", " ");
            res += blogID + "&" + blogTitle + "&" + blogContent + "&" + blogDate + "&" + blogwriter +"&"+ blogck+"#";
            tmp++;
        }

        return res;
    }

    public String getBlogTitle_aslike()
    {
        String res = "";
        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection myConn = new SqlConnection(ConStr);
        String _num = topnum.ToString();
        myConn.Open();
        // String user = User.Identity.Name;
        string sqlstr = "select  top " + _num + " * from [Blog] order by [Blog_like] DESC";
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
            String blogwriter = testRow["Blog_writer"].ToString();
            blogwriter = blogwriter.Replace("&", " ");
            blogwriter = blogwriter.Replace("#", " ");
            String blogLike = testRow["Blog_like"].ToString();
            blogLike = blogLike.Replace("&", " ");
            blogLike = blogLike.Replace("#", " ");
            res += blogID + "&" + blogTitle + "&" + blogContent + "&" + blogDate +"&"+blogwriter+"&"+blogLike+ "#";
            tmp++;
        }

        return res;
    }


}