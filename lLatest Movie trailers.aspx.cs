using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Latest_Movie_trailers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");
        string str;
        str = "select * from Latest_movies_trailers";

        //Class   object     Class
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();

        //for insert,update & delete query...
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        DataListhi.DataSource = dr;
        DataListhi.DataBind();

    }


    public void Item_Bound1(Object sender, DataListItemEventArgs e)
    {

        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {

            // Retrieve the Label control in the current DataListItem.


            // System.Data.DataRowView drv = (System.Data.DataRowView)(e.Item.DataItem);


            Label filename = (Label)e.Item.FindControl("videoname");


            ASPNetFlashVideo.FlashVideo f = (ASPNetFlashVideo.FlashVideo)e.Item.FindControl("FlashVideo3");


            f.VideoURL = "video/" + filename.Text;


        }
    }

        }
    
    