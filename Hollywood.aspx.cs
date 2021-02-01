using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Hollywood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where category = 'Hollywood'";


            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            DataList6.DataSource = dr;
            DataList6.DataBind();
        }
    }
    public void hi(object sender, DataListCommandEventArgs e)
    {

        //get product id.
        int i;
        i = Convert.ToInt16(e.CommandArgument);


        if (e.CommandName == "holywooddetail")
        {
            Session["hld"] = i;

            Response.Redirect("Hollywood_detail.aspx");
        }
    }
}
