using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ViewDetailNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "select * from Screen_managment where movieid =" + Session["movieid"] + " ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {


            Image2.ImageUrl = "images/" + dr["imagename"].ToString();

            moviename.Text = dr["moviename"].ToString();

            releasedate.Text = dr["releasedate"].ToString();

            shortdesc.Text = dr["shortdesc"].ToString();
            longdesc.Text = dr["longdesc"].ToString();

            timing.Text = dr["timing"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User Regestration.aspx");
    }
}