using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["UserName"] == null)
        //{
        //    Response.Redirect("Userlogin.aspx");
        //}
        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where screenname = 'Screen_1'";


            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            DataList2.DataSource = dr;
            DataList2.DataBind();
            DataList1.Visible = false;


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

            Response.Redirect("ViewDetail.aspx");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where timing = '" + DropDownList1.SelectedItem.Text + "'";


            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

        }
    }
}