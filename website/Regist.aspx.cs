using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sign_up_Click(object sender, EventArgs e)
    {
        Alert.Text = null;
        string user_name = null;
        string password1 = password.Text;
        string password2 = re_password.Text;
        string user_password = null;
        string gender = null;

        if (check_empty() == false)
        {       //check user name
            user_name = email.Text;

            if (check_password(password1, password2))  //check password
                user_password = password.Text;
            if (check_box())
            {
                gender = check_gender();

            }

        }
        else
        {
            Alert.Text = "There are some missing blank, Please check.";
        }
        //other imformation   process and store in database later

    }












    protected bool check_empty()
    {
        //check whether contain this username in our database
        if (email.Text == null)
            return true;
        else if (password.Text == null)
            return true;
        else if (re_password.Text == null)
            return true;
        else if (nationality.Text == null)
            return true;
        else return false;

    }

    protected bool check_password(string a, string b) {
        if (a.Equals(b))
            return true;
        else
        {
            Alert.Text = "Two password does not match, please type again.";
            password.Text = null;
            re_password.Text = null;
            return false;
        }
    }
    protected bool check_box()
    {
        if (gender_m.Checked && gender_f.Checked)
        {
            Alert.Text = "You cannot be both male and female, no joke plz :)";
            return false;
        }
        else if (!gender_f.Checked && !gender_m.Checked)
        {
            Alert.Text = "Please choose your gender.";
            return false;
        }
        else return true;
    }

    protected string check_gender()
    {
        string s1 = "male";
        string s2 = "female";
        
        
            if (gender_m.Checked)
                return s1;
            else
                return s2;
        
        
    }
}