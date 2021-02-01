using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Update_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from registration where username = '" + Session["UserName"] + "'  ";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Image1.ImageUrl = "profile images/" + dr["imagename"].ToString();

                lblname.Text = dr["username"].ToString();

            //    lblpass.Text = dr["password"].ToString();

                lbladd.Text = dr["address"].ToString();

                lblcity.Text = dr["city"].ToString();

                lblphone.Text = dr["phoneno"].ToString();

                lblbirthdate.Text = dr["birthdate"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update_Profile.aspx");
    }
}