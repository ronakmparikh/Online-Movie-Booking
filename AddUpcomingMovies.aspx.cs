using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AddUpcomingMovies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        {
            FileUpload1.SaveAs(Server.MapPath(".") + @"\images\" + FileUpload1.FileName);

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;

            str = "Insert into Upcoming_movies(moviename,releasedate,imagename,shortdesc,longdesc)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + FileUpload1.FileName + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();
            cmd.ExecuteNonQuery();

            Label1.Text = "Inserted Succ.";
            GridView1.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}