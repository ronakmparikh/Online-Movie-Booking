using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {


            //Label1.Text = Convert.ToString(Session["username"]);


            if (Page.IsPostBack == false)
            {

                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

                string str;
                str = "select * from Screen_managment";


                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();

                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();

            }


        }



    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}