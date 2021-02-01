using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Check_Availability : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

             SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");


        string str;
        str = "select * from Screen_managment,TheatreMaster where Screen_managment.moviename ='" + DropDownList1.SelectedItem.Value + "' and Screen_managment.timing='" + DropDownList2.SelectedItem.Value + "' and Screen_managment.TheatreId=TheatreMaster.TheatreId";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

       
       
            DataList1.DataSource = dr;
            DataList1.DataBind();
            DataList1.Visible = true;
        
    }
        public void hi(object sender,DataListCommandEventArgs e)
    {

        //get product id.
        int i;
        i = Convert.ToInt16( e.CommandArgument);

        Session["movieid"] = i;

        if (e.CommandName == "checkseat")
        {

            Response.Redirect("Book_Ticket.aspx");
        }
    }
       
}