using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Button_bookticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "select movieid from Screen_managment where moviename = '"+DropDownList1.SelectedItem.Text+"' and timing = '"+ DropDownList2.SelectedItem.Text +"'";
        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        //int i;
        //i = Convert.ToInt32(cmd.ExecuteScalar);
        Session["movieid"] = (cmd.ExecuteScalar());
        Response.Redirect("Book_Ticket.aspx");
    }
}