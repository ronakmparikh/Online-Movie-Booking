using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\userside.mdf;Integrated Security=True;User Instance=True");


            string str;
            str = "select count(*) from registration  where emailid ='" + txtusername.Text + "' and password='" + txtpassword.Text + "' ";

            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            //for getting single value from database...

            
            // for admin......

            SqlConnection con4 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\userside.mdf;Integrated Security=True;User Instance=True");
            string str1;
            str1 = "select count(*) from Admin  where Email_Id ='" + txtusername.Text + "' and password='" + txtpassword.Text + "' ";

            SqlCommand cmd1 = new SqlCommand(str1, con4);

            con4.Open();
            int j;
            j = Convert.ToInt16(cmd1.ExecuteScalar());

            if (i == 1)
            {
                //Session["UserName"] = txtusername.Text;
                //Datatype = obejct.
                //global varibale.

                Session["emailid"] = txtusername.Text;

                SqlConnection con12 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\userside.mdf;Integrated Security=True;User Instance=True");


                string str12;
                str12 = "select userid from registration  where emailid ='" + txtusername.Text + "' ";

                SqlCommand cmd12 = new SqlCommand(str12, con12);

                con12.Open();
                Session["userid"] = cmd12.ExecuteScalar();

                SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\userside.mdf;Integrated Security=True;User Instance=True");


                string str2;
                str2 = "select username from registration  where emailid ='" + txtusername.Text + "' ";

                SqlCommand cmd2 = new SqlCommand(str2, con1);

                con1.Open();


                Session["UserName"] = cmd2.ExecuteScalar();
                Response.Redirect("User_Home.aspx");

                //for getting single value from database...
            }
            else if (j == 1)
            {

                //Session["UserName"] = txtusername.Text;
                //Datatype = obejct.
                //global varibale.

                Session["emailid"] = txtusername.Text;
                SqlConnection con3 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\userside.mdf;Integrated Security=True;User Instance=True");


                string str3;
                str3 = "select username from Admin  where Email_Id ='" + txtusername.Text + "' ";

                SqlCommand cmd3 = new SqlCommand(str3, con3);

                con3.Open();


                Session["UserName"] = cmd3.ExecuteScalar();
                Response.Redirect("Admin_Home.aspx");
            }
            else
            {
                Label1.Text = "Invalid UserName or Pass.";
            }

        }
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
}