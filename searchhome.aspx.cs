using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class searchhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Panel1.Visible = false;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "select * from Screen_managment where movieid = '" + Session["search"] + "'  ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
    
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                      Panel1.Visible = true;
                    Image1.ImageUrl = "images/" + dr["imagename"].ToString();

                    moviename.Text = dr["moviename"].ToString();

                    releasedate.Text = dr["releasedate"].ToString();

                    shortdesc.Text = dr["shortdesc"].ToString();
                }
                else if (dr.Read() == false)
                {
                    Panel1.Visible = false;
                    msg.Text = " No Data Found ";
                }

    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Book_Ticket.aspx");
    }
}