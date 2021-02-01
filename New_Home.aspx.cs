using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class New_Home : System.Web.UI.Page
{
    movie m = new movie();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment where screenname = 'Screen_1'";


            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            //DataList1.DataSource = dr;
            //DataList1.DataBind();

            drptheatre.DataSource = m.GetDataReaderQuery("select * from TheatreMaster");
            drptheatre.DataValueField = "TheatreId";
            drptheatre.DataTextField = "TheatreName";
            drptheatre.DataBind();
            drptheatre.Items.Insert(0, "Select Theatre");

            drpcity.DataSource = m.GetDataReaderQuery("select * from City");
            drpcity.DataValueField = "CityId";
            drpcity.DataTextField = "CityName";
            drpcity.DataBind();
            drpcity.Items.Insert(0, "Select City");
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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str;
        str = "select * from Screen_managment where CityId="+ drpcity.SelectedItem.Value +" and TheatreId="+ drptheatre.SelectedItem.Value +" ";


        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}