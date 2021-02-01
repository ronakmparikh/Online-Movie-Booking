using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ViewDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where movieid='" + Session["movieid"] + "' ";

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

            SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str1;
            str1 = "select username,review from Reviews where movieid='" + Session["movieid"] + "' ";

            SqlCommand cmd1 = new SqlCommand(str1, con1);

            con1.Open();

            SqlDataReader dr1 = cmd1.ExecuteReader();

            GridView1.DataSource = dr1;
            GridView1.DataBind();





        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Book_Ticket.aspx");  
    }


    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "Insert into Reviews(movieid,username,review)values(" + Session["movieid"] + ",'" + Session["username"] + "','" + txtreview.Text + "')";
        

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();
        Labelreview.Text = "You Posted a Review";
        SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str1;
        str1 = "select username,review from Reviews where movieid='" + Session["movieid"] + "' ";

        SqlCommand cmd1 = new SqlCommand(str1, con1);

        con1.Open();

        SqlDataReader dr1 = cmd1.ExecuteReader();

        GridView1.DataSource = dr1;
        GridView1.DataBind();



    }
}