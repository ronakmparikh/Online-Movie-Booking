using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment";


            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            DataList12.DataSource = dr;
            DataList12.DataBind();
        }

    }

    public void hi(object sender, DataListCommandEventArgs e)
    {

        //get product id.
        int i;
        i = Convert.ToInt16(e.CommandArgument);

        Session["movieid"] = i;


        if (e.CommandName == "DetailButton")
        {

            Response.Redirect("Admin_ViewDetail.aspx");
        }
        if (e.CommandName == "UpdateButton")
        {
            Response.Redirect("UpdateMovie.aspx");
        }

    }
}