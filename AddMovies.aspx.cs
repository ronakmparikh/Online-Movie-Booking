using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class AddUpcimingMovies : System.Web.UI.Page
{
    movie m = new movie();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            drptheater.DataSource = m.GetDataReaderQuery("select * from TheatreMaster");
            drptheater.DataValueField = "TheatreId";
            drptheater.DataTextField = "TheatreName";
            drptheater.DataBind();
            drptheater.Items.Insert(0,"Select Theatre");

            drpcity.DataSource = m.GetDataReaderQuery("select * from City");
            drpcity.DataValueField = "CityId";
            drpcity.DataTextField = "CityName";
            drpcity.DataBind();
            drpcity.Items.Insert(0,"Select City");


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(".") + @"\images\" + FileUpload1.FileName);

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;

        str = "Insert into Screen_managment values ("+drptheater.SelectedItem.Value+","+drpcity.SelectedItem.Value+",'"+drpscreen.SelectedItem.Text+"','"+txtmovie.Text+"','"+drpcat.SelectedItem.Text+"','"+txtrelese.Text+"','"+drptime.SelectedItem.Text+"','"+FileUpload1.FileName+"','"+txtshrt.Text+"','"+txtlong.Text+"')";


        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();

        Label1.Text = "Inserted Succ.";
       Response.Redirect("Admin_Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtmovie.Text = "";
        txtlong.Text = "";
    }
   
}