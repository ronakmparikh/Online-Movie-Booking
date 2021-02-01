using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class scrupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        //Label2.Text = Session["Screenname"].ToString();
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where movieid='" + Session["Screenname"] + "'   ";
            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr["moviename"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(".") + @"\images\" + FileUpload1.FileName);

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;

        str = "Update Screen_managment set moviename='" + TextBox1.Text + "', imagename='" + FileUpload1.FileName + "',screenname='" + DropDownList1.SelectedItem.Text + "',timing= '" + DropDownList2.SelectedItem.Text + "'  where movieid='" + Session["movieid"] + "' ";



        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();
        Response.Redirect("screenmanag.aspx");

    }
}