using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AddVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"]==null)
        {
            Response.Redirect("Userlogin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Value == "Upcoming_movie_trailers")
        {
            FileUpload1.SaveAs(Server.MapPath(".") + @"\video\" + FileUpload1.FileName);


            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;

            str = "Insert into Upcomig_movie_trailers (moviename,videoname)values('" + TextBox1.Text + "','" + FileUpload1.FileName + "')";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();
            cmd.ExecuteNonQuery();

          
        }
        if (DropDownList1.SelectedItem.Value == "Latest_movie_trailers")
        {
            FileUpload1.SaveAs(Server.MapPath(".") + @"\video\" + FileUpload1.FileName);


            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;

            str = "Insert into Latest_movies_trailers (moviename,videoname)values('" + TextBox1.Text + "','" + FileUpload1.FileName + "')";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();
            cmd.ExecuteNonQuery();

          

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}