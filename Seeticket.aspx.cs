using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Seeticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
           {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select * from Booking_master where status='Pending' and bookingdate='"+ System.DateTime.Now.ToShortDateString() +"' and username ='" + Session["UserName"] + "'";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();
               
        }
          
      




    }
    

       protected void  Button2_Click(object sender, EventArgs e)
{
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str;
            str = "select max(bookingid) from Booking_master ";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();


            Session["boook"] = (cmd.ExecuteScalar());

            SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str1;
            str1 = "select * from Booking_master where bookingid ='"+ Session["boook"] +"'";

            SqlCommand cmd1 = new SqlCommand(str1, con1);

            con1.Open();

            SqlDataReader dr;
            dr = cmd1.ExecuteReader();

        while(dr.Read())
        {
            Session["moviefinal"]=dr["moviename"].ToString();
            Session["screenfinal"]=dr["screenname"].ToString();
             Session["pricefinal"]=dr["price"].ToString();
        }



            SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

            string str2;
            str2 = "select emailid from registration where username ='"+ Session["UserName"] +"'";

            SqlCommand cmd2 = new SqlCommand(str2, con2);

            con2.Open();
           Session["email"]=(cmd2.ExecuteScalar());
           Label2.Text = Convert.ToString(Session["email"]);


           SqlConnection con22 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

           string str22;
           str22 = "Update Booking_Master set status='book' where bookingid="+ Session["boook"] +" ";

           SqlCommand cmd22 = new SqlCommand(str22, con22);
           con22.Open();
           cmd22.ExecuteNonQuery();


       // MailSender.SendEmail("vkeysoni23@gmail.com", "i love my first love",Label2.Text,"your movie ticket Booked conformation Mail","Your Ticket has been booked and the rate has been reduced from your paypal account thankyu....... for more detail visit us" , System.Web.Mail.MailFormat.Html,"");


        //int i;
        //i = Convert.ToInt16(e.CommandArgument);



        //Session["lbld"] = i;

        
        Response.Redirect("buynow.aspx");
        }
    }


