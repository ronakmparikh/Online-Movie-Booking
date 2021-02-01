using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class LogoutMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
//    protected void Button1_Click1(object sender, EventArgs e)
//    {
       
//    }
//    //protected void LinkButton2_Click(object sender, EventArgs e)
//    {
//        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

//        string str;
//        str = "select * from Screen_managment where moviename like '%" + TextBox1.Text + "%'   ";

//        SqlCommand cmd = new SqlCommand(str, con);

//        con.Open();
//        Session["lsearch"] = cmd.ExecuteScalar();
//        Response.Redirect("lsearchhome.aspx");
//    }
   
//}
