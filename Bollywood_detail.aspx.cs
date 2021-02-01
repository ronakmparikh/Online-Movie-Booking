using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Newreleased_detai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "select * from Screen_managment where movieid=" + Session["bld"] + "  ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            Image1.ImageUrl = "images/" + dr["imagename"].ToString();

            lblmoviename.Text = dr["moviename"].ToString();

            lblreleasedate.Text = dr["releasedate"].ToString();

            lblshortdesc.Text = dr["shortdesc"].ToString();
            timing.Text = dr["timing"].ToString();
            screenname.Text = dr["screenname"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Book_Ticket.aspx");
    
    }
}