using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Update_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from registration where username='" + Session["UserName"] + "'   ";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                txtname.Text = dr["username"].ToString();
                txtpass.Text = dr["password"].ToString();
                txtadd.Text = dr["address"].ToString();
                DropDownList1.SelectedItem.Text = dr["city"].ToString();
                txtphone.Text = dr["phoneno"].ToString();
                txtbirth.Text = dr["birthdate"].ToString();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        FileUpload1.SaveAs(Server.MapPath(".") + @"\profile images\" + FileUpload1.FileName);

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;

        str = "Update registration set username='" + txtname.Text + "',password='" + txtpass.Text + "',address='" + txtadd.Text + "',city='" + DropDownList1.SelectedItem.Text + "',phoneno='" + txtphone.Text + "',birthdate='" + txtbirth.Text + "',imagename='" + FileUpload1.FileName + "' where username='" + Session["UserName"] + "' ";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        cmd.ExecuteNonQuery();

        Response.Redirect("Profile_desc.aspx");
    }
}