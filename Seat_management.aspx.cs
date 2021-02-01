using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Faculty_Seminar_Detail : System.Web.UI.Page
{
    movie m = new movie();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            drptheater.DataSource = m.GetDataReaderQuery("select * from TheatreMaster");
            drptheater.DataValueField = "TheatreId";
            drptheater.DataTextField = "TheatreName";
            drptheater.DataBind();
            drptheater.Items.Insert(0, "Select Theatre");

            drpcity.DataSource = m.GetDataReaderQuery("select * from City");
            drpcity.DataValueField = "CityId";
            drpcity.DataTextField = "CityName";
            drpcity.DataBind();
            drpcity.Items.Insert(0, "Select City");
        

        }

    }
    protected void abtadd_Click(object sender, EventArgs e)
    {
       
            int r = Convert.ToInt16(txtseat.Text);

            for (int y = 1; y <= r; y++)
            {
                string name;
                name = txtblock.Text + y;
       
                m.ExecuteNonQuery1("Insert into Seat_Master values(" + drptheater.SelectedItem.Value + "," + drpcity.SelectedValue + ",'"+name+"','"+drpscreen.SelectedItem.Text+"','"+drptype.SelectedItem.Text+"',"+txtamnt0.Text+",'UnBook')");
  

               

            }
            abtadd.Enabled = false;
            GridView1.DataBind();
        Label2.Text = "Seat Detail Inserted Succ...";
    }
  
    protected void btncanel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Seminar_Detail.aspx");
    }
    protected void txtblock_TextChanged(object sender, EventArgs e)
    {
        abtadd.Enabled = true;

    }
}