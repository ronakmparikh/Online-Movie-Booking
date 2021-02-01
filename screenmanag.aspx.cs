using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class screenmanag : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");


        string str;
        str = "select * from Screen_managment where moviename ='" + DropDownList1.SelectedItem.Text + "' and screenname ='" + DropDownList2.SelectedItem.Text + "'";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        DataList1.Visible = true;
    }
    public void hi(object sender, DataListCommandEventArgs e)
    {

        //get product id.
        int i;
        i = Convert.ToInt16(e.CommandArgument);

        Session["Screenname"] = i;
        if (e.CommandName == "thisisview")
        {
            Response.Redirect("scrupdate.aspx");
        }
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("scrupdate.aspx");
    //}
}