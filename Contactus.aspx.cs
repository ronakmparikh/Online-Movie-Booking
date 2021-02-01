using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "Insert Feedback(username,emailid,subject,description)values('" + Session["UserName"] + "','" + Session["emailid"] + "','" + TextBox3.Text + "','" + TextBox4.Text + "')"; 

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();
        desc.Text = "You Post a Feedback";

      
    }
}