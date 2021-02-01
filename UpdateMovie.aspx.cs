using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;

public partial class UpdateMovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select moviename,releasedate,imagename,shortdesc,longdesc from Screen_managment where movieid='" + Session["movieid"] + "'   ";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                    TextBox1.Text = dr["moviename"].ToString();
                    TextBox2.Text = dr["releasedate"].ToString();
                    TextBox4.Text = dr["shortdesc"].ToString();
                    TextBox3.Text = dr["longdesc"].ToString();
                

            }
        }
    

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

         FileUpload1.SaveAs( Server.MapPath(".")  + @"\images\" + FileUpload1.FileName);

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

         string str;

         str = "Update Screen_managment set moviename='" + TextBox1.Text.Trim() + "',releasedate='" + TextBox2.Text + "',imagename='" + FileUpload1.FileName + "',timing='" + DropDownList2.SelectedItem.Value + "',screenname='" + DropDownList3.SelectedItem.Value + "',category='" + DropDownList1.SelectedItem.Value + "',shortdesc= '" + TextBox4.Text + "',longdesc= '" + TextBox3.Text + "' where movieid=" + Session["movieid"] + " ";

      

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();

        Label1.Text = "Updated Succ.";
        //Response.Redirect("User_Home.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
    }
}