using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
public partial class Book_Ticket : System.Web.UI.Page
{
    ArrayList a11 = new ArrayList();
    movie m = new movie();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
            {
                //class       obj       class
                SqlConnection con22 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

                string str22;
                str22 = "select * from User_Book_Seats ";

                SqlCommand cmd22 = new SqlCommand(str22, con22);

                con22.Open();

                SqlDataReader dr22;
                dr22 = cmd22.ExecuteReader();
                // to get one or more rows from table...

                while (dr22.Read())
                {
                    a11.Add(dr22["SeatId"]);

                }
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Screen_managment,TheatreMaster where Screen_managment.movieid = " + Session["movieid"] + "  and Screen_managment.TheatreId=TheatreMaster.TheatreId ";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
           
            lblMoviesDate.Text = Convert.ToString(System.DateTime.Now.Date.ToShortDateString());
            while (dr.Read())
            {
                lbltheatre.Text = dr["TheatreName"].ToString();
                lblMoviName.Text = dr["moviename"].ToString();
                lblShowtime.Text = dr["timing"].ToString();
                ViewState["TheatreId"] = dr["TheatreId"];
                lblScreen.Text = dr["screenname"].ToString();
            }
           if(lblScreen.Text=="Screen_1")
           { 
               lblSid.Text = "1";
           }
           if (lblScreen.Text == "Screen_2")
           {
               lblSid.Text = "2";
           }
           if (lblScreen.Text == "Screen_3")
           {
               lblSid.Text = "3";
           }
           if (lblScreen.Text == "Screen_4")
           {
               lblSid.Text = "4";
           }
            
            //class       obj       class
            SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str1;
            str1 = "select * from Screen_managment where movieid = " + Session["movieid"] + " ";
         

            SqlCommand cmd1 = new SqlCommand(str1, con1);

            con1.Open();

            SqlDataReader dr1;
            dr1 = cmd1.ExecuteReader();
            ArrayList a1 = new ArrayList();
            while (dr1.Read())
            {
             //   a1.Add(dr1["Seat_Id"]);

            }

            Session["a1"] = a1;


            //class       obj       class
            SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str2;
            str2 = "select * from Seat_Master,Screen_managment where Seat_Master.Seattype = 'Club' and Screen_managment.movieid=" + Session["movieid"] + " and Screen_managment.TheatreId=Seat_Master.TheatreId";

            SqlCommand cmd2 = new SqlCommand(str2, con2);

            con2.Open();

            SqlDataReader dr2;
            dr2 = cmd2.ExecuteReader();
            // to get one or more rows from table...

           
            DataList7.DataSource = dr2;
            DataList7.DataBind();



            SqlConnection con21 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str21;
            str21 = "select * from Seat_Master,Screen_managment where Seat_Master.Seattype = 'Gold' and Screen_managment.movieid=" + Session["movieid"] + " and Screen_managment.TheatreId=Seat_Master.TheatreId";

            SqlCommand cmd21 = new SqlCommand(str21, con21);

            con21.Open();

            SqlDataReader dr21;
            dr21 = cmd21.ExecuteReader();
            // to get one or more rows from table...


            DataList5.DataSource = dr21;
            DataList5.DataBind();




            SqlConnection con23 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str23;
            str23 = "select * from Seat_Master,Screen_managment where Seat_Master.Seattype = 'Silver' and Screen_managment.movieid=" + Session["movieid"] + " and Screen_managment.TheatreId=Seat_Master.TheatreId";

            SqlCommand cmd23 = new SqlCommand(str23, con23);

            con23.Open();

            SqlDataReader dr23;
            dr23 = cmd23.ExecuteReader();
            // to get one or more rows from table...


            DataList8.DataSource = dr23;
            DataList8.DataBind();
        // lblSeatType.Text = "210";
          // lblRate.Text = "210";

            DataList5.Visible = false;
            DataList8.Visible = false;


        }
    }
    
    // Club //

     protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList7.SelectedIndex = e.Item.ItemIndex;
        LinkButton l1;
        l1 = (LinkButton)DataList7.Items[DataList7.SelectedIndex].FindControl("l1");

        int seatid = Convert.ToInt16(e.CommandArgument);
       
       



        if (l1.Text != " ")
        {
            if (l1.BackColor.Name == "CornflowerBlue")
            {
                l1.BackColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                l1.BackColor = System.Drawing.Color.FromName("CornflowerBlue");
            }
        }



        //class       obj       class
        SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str2;
        str2 = "update Seat_Master set status='Book' where Seatid=" + seatid + "";

        SqlCommand cmd2 = new SqlCommand(str2, con2);

        con2.Open();

        cmd2.ExecuteNonQuery();

        SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        string str1 = "insert into Booking_master(userid,movieid,TheatreId,Seatid,username,moviename,bookedticket,price,bookingdate,category,Screenname,timing,seatno)values(" + Session["userid"] + "," + Session["movieid"] + "," + ViewState["TheatreId"] + "," + seatid + ",'" + Session["UserName"] + "','" + lblMoviName.Text + "','" + DropDownList2.SelectedItem.Text + "','" + lblRate.Text + "','" + lblMoviesDate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + lblSid.Text + "','" + lblShowtime.Text + "','" + l1.Text + "')";
        con1.Open();

        SqlCommand cmd1 = new SqlCommand(str1, con1);
        cmd1.ExecuteNonQuery();
        m.ExecuteNonQuery1("insert into Total_Seat values(" + seatid + "," + ViewState["TheatreId"] + ",'" + lblScreen.Text + "','" + lblShowtime.Text + "','Book','" + lblMoviesDate.Text + "')");
        Label2.Text = "Seat Booked.";
        //Response.Redirect ( "Seeticket.aspx");

        con1.Close();
    

         // for getting booking id's




    }
    
    // gold //

     protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
     {
         DataList5.SelectedIndex = e.Item.ItemIndex;
         int seatid = Convert.ToInt16(e.CommandArgument);
         LinkButton l3;
         l3 = (LinkButton)DataList5.Items[DataList5.SelectedIndex].FindControl("l3");
         if (l3.Text != " ")
         {
             if (l3.BackColor.Name == "CornflowerBlue")
             {
                 l3.BackColor = System.Drawing.Color.LightGreen;
             }
             else
             {
                 l3.BackColor = System.Drawing.Color.FromName("CornflowerBlue");
             }
         }

         //class       obj       class
         SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

         string str2;
         str2 = "update Seat_Master set status='Book' where Seatid=" + seatid + "";

         SqlCommand cmd2 = new SqlCommand(str2, con2);

         con2.Open();

         cmd2.ExecuteNonQuery();

         SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

         string str1 = "insert into Booking_master(userid,movieid,TheatreId,Seatid,username,moviename,bookedticket,price,bookingdate,category,Screenname,timing,seatno)values(" + Session["userid"] + "," + Session["movieid"] + "," + ViewState["TheatreId"] + "," + seatid + ",'" + Session["UserName"] + "','" + lblMoviName.Text + "','" + DropDownList2.SelectedItem.Text + "','" + lblRate.Text + "','" + lblMoviesDate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + lblSid.Text + "','" + lblShowtime.Text + "','" + l3.Text + "')";
         con1.Open();

         SqlCommand cmd1 = new SqlCommand(str1, con1);
         cmd1.ExecuteNonQuery();
         m.ExecuteNonQuery1("insert into Total_Seat values(" + seatid + "," + ViewState["TheatreId"] + ",'" + lblScreen.Text + "','" + lblShowtime.Text + "','Book','" + lblMoviesDate.Text + "')");
      
         Label2.Text = "Seat Booked.";
         //Response.Redirect ( "Seeticket.aspx");

         con1.Close();




     }
   
    // silver //

     protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
     {
         DataList8.SelectedIndex = e.Item.ItemIndex;


         int seatid = Convert.ToInt16(e.CommandArgument);
       


         LinkButton l5;
         l5 = (LinkButton)DataList8.Items[DataList8.SelectedIndex].FindControl("l5");


         //a11.Add(l1.Text);

         //Session["a1"] = a11;



         if (l5.Text != " ")
         {
             if (l5.BackColor.Name == "CornflowerBlue")
             {
                 l5.BackColor = System.Drawing.Color.LightGreen;
             }
             else
             {
                 l5.BackColor = System.Drawing.Color.FromName("CornflowerBlue");
             }
         }



         //class       obj       class
         SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

         string str2;
         str2 = "update Seat_Master set status='Book' where Seatid=" + seatid + "";

         SqlCommand cmd2 = new SqlCommand(str2, con2);

         con2.Open();

         cmd2.ExecuteNonQuery();




         SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

         string str1 = "insert into Booking_master(userid,movieid,TheatreId,Seatid,username,moviename,bookedticket,price,bookingdate,category,Screenname,timing,seatno)values(" + Session["userid"] + "," + Session["movieid"] + "," + ViewState["TheatreId"] + "," + seatid + ",'" + Session["UserName"] + "','" + lblMoviName.Text + "','" + DropDownList2.SelectedItem.Text + "','" + lblRate.Text + "','" + lblMoviesDate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + lblSid.Text + "','" + lblShowtime.Text + "','" + l5.Text + "')";
         con1.Open();

         SqlCommand cmd1 = new SqlCommand(str1, con1);
         cmd1.ExecuteNonQuery();
         m.ExecuteNonQuery1("insert into Total_Seat values(" + seatid + "," + ViewState["TheatreId"] + ",'" + lblScreen.Text + "','" + lblShowtime.Text + "','Book','" + lblMoviesDate.Text + "')");
      
         Label2.Text = "Seat Booked.";
         //Response.Redirect ( "Seeticket.aspx");

         con1.Close();




     }

    public void Item_Bound(Object sender, DataListItemEventArgs e)
     {

         if (e.Item.ItemType == ListItemType.Item ||
             e.Item.ItemType == ListItemType.AlternatingItem)
         {

             Label lblid = (Label)e.Item.FindControl("lblid");

             LinkButton lnkseat = (LinkButton)e.Item.FindControl("l1");

             Label lblstatus = (Label)e.Item.FindControl("Label3");

             if (lblstatus.Text == "Book")
             {
                 int i = Convert.ToInt16(m.ExecuteScalarQuery("select count(*) from Total_Seat where Seatid=" + lblid.Text + " and timing='" + lblShowtime.Text + "' and Status='Book' and Date='"+lblMoviesDate.Text+"'"));
                 if(i!=0)
                 {

                 lnkseat.BackColor = System.Drawing.Color.Red;
                 lnkseat.Enabled = false;
                 }
             }

         }
       
     }
   
    // Club //

    public void Item_Bound1(Object sender, DataListItemEventArgs e)
    {

        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {


            LinkButton lnkseat = (LinkButton)e.Item.FindControl("l3");

            Label lblstatus1 = (Label)e.Item.FindControl("Label5");
            Label lblid = (Label)e.Item.FindControl("lblid");

            if (lblstatus1.Text == "Book")
            {
                int i = Convert.ToInt16(m.ExecuteScalarQuery("select count(*) from Total_Seat where Seatid=" + lblid.Text + " and timing='" + lblShowtime.Text + "' and Status='Book' and Date='" + lblMoviesDate.Text + "'"));
                if (i != 0)
                {

                    lnkseat.BackColor = System.Drawing.Color.Red;
                    lnkseat.Enabled = false;
                }
            }

        }

    }
    
    // gold //

    public void Item_Bound2(Object sender, DataListItemEventArgs e)
    {

        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {

            Label lblid = (Label)e.Item.FindControl("lblid");

            LinkButton lnkseat = (LinkButton)e.Item.FindControl("l5");

            Label lblstatus2 = (Label)e.Item.FindControl("Label7");

            if (lblstatus2.Text == "Book")
            {
                int i = Convert.ToInt16(m.ExecuteScalarQuery("select count(*) from Total_Seat where Seatid=" + lblid.Text + " and timing='" + lblShowtime.Text + "' and Status='Book' and Date='" + lblMoviesDate.Text + "'"));
                if (i != 0)
                {

                    lnkseat.BackColor = System.Drawing.Color.Red;
                    lnkseat.Enabled = false;
                }
            }

        }

    }

    // silver //
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["rate1"] = lblSeatType.Text;
        
        LinkButton l1;
        LinkButton l3;
        LinkButton l5;
        foreach (DataListItem ObjItem in DataList7.Items)
        {
            l1 = (LinkButton)ObjItem.FindControl("l1");

            int SeatId;
            SeatId = Convert.ToInt16(l1.CommandArgument);

            if (l1.BackColor.Name == "LightGreen" && l1.Enabled == true)
            {

                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

                string str = "select max(bookingid) from Booking_master";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();

                int i;

                i = Convert.ToInt16(cmd.ExecuteScalar());
                i++;
                //


                //Session["RateId"] = 3;

               


                // for getting booking id.....

                SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");
                string str2 = " select max(bookingid) from Booking_master";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(str2, con2);
                i = Convert.ToInt16(cmd2.ExecuteScalar());
                Session["bookingid"] = i;
                Label2.Text = "Seat Booked.";

                Response.Redirect("Seeticket.aspx");

                
            }
        }


        foreach (DataListItem ObjItem in DataList5.Items)
        {
            l3 = (LinkButton)ObjItem.FindControl("l3");

            int SeatId;
            SeatId = Convert.ToInt16(l3.CommandArgument);

            if (l3.BackColor.Name == "LightGreen" && l3.Enabled == true)
            {

                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

                string str = "select max(bookingid) from Booking_master";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();

                int i;

                i = Convert.ToInt16(cmd.ExecuteScalar());
                i++;
                //


                //Session["RateId"] = 3;




                // for getting booking id.....

                SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");
                string str2 = " select max(bookingid) from Booking_master";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(str2, con2);
                i = Convert.ToInt16(cmd2.ExecuteScalar());
                Session["bookingid"] = i;
                Label2.Text = "Seat Booked.";

                Response.Redirect("Seeticket.aspx");


            }
        }


        foreach (DataListItem ObjItem in DataList8.Items)
        {
            l5 = (LinkButton)ObjItem.FindControl("l5");

            int SeatId;
            SeatId = Convert.ToInt16(l5.CommandArgument);

            if (l5.BackColor.Name == "LightGreen" && l5.Enabled == true)
            {

                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

                string str = "select max(bookingid) from Booking_master";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();

                int i;

                i = Convert.ToInt16(cmd.ExecuteScalar());
                i++;
                //


                //Session["RateId"] = 3;




                // for getting booking id.....

                SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");
                string str2 = " select max(bookingid) from Booking_master";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(str2, con2);
                i = Convert.ToInt16(cmd2.ExecuteScalar());
                Session["bookingid"] = i;
                Label2.Text = "Seat Booked.";

                Response.Redirect("Seeticket.aspx");


            }
        }


    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
            SqlDataReader dr = m.GetDataReaderQuery("select * from Seat_Master,Screen_managment where Seat_Master.Seattype = '"+DropDownList1.SelectedItem.Text+"' and Screen_managment.movieid=" + Session["movieid"] + " and Screen_managment.TheatreId=Seat_Master.TheatreId");
            while (dr.Read())
            {
                lblSeatType.Text = dr["Price"].ToString();
                lblRate.Text = dr["Price"].ToString();
            }

            if (IsPostBack == true)
            {
                int a = Convert.ToInt32(lblSeatType.Text);
                int b = Convert.ToInt32(DropDownList2.SelectedItem.Text);

                int c = a * b;
                lblRate.Text = Convert.ToString(c);
            }
            if (DropDownList1.SelectedItem.Text == "Club")
            {
                DataList5.Visible = false;
                DataList8.Visible = false;
                DataList7.Visible = true;
            }


            else if (DropDownList1.SelectedItem.Text == "Gold")
            {
                DataList7.Visible = false;
                DataList8.Visible = false;
                DataList5.Visible = true;
            }

            else
            {
                DataList7.Visible = false;
                DataList5.Visible = false;
                DataList8.Visible = true;

            }
        }
    

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            int a = Convert.ToInt32(lblSeatType.Text);
            int b = Convert.ToInt32(DropDownList2.SelectedItem.Text);

            int c = a * b;
            lblRate.Text = Convert.ToString(c);//or Convert.toString(c);
        }
    }
}
