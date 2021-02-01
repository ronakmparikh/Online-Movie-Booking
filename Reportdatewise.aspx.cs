using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

//namespace for crystal report.
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Reportdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session[" text1 "] = TextBox1.Text;
        
        //Connection string replace 'databaseservername' with your db server name
        string sqlCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(sqlCon);

        String str;
        str = "select * from Booking_master where bookingdate = '"+ TextBox1.Text +"' ";


        
        SqlDataAdapter da = new SqlDataAdapter(str, con);


        DataSet ds;

        ds = new DataSet();

        da.Fill(ds);
       

        ReportDocument report = new ReportDocument();


        string reportPath = Server.MapPath("datewise.rpt");
        report.Load(reportPath);

        report.SetDataSource(ds.Tables[0]);

        CrystalReportViewer1.ReportSource = report;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.RefreshReport();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {

            DateTime date1 = Convert.ToDateTime(TextBox1.Text);
            DateTime date2 = System.DateTime.Now;
            if (date1 >= date2)
            {

                int i = DateTime.Compare(Convert.ToDateTime(date1), Convert.ToDateTime(date2));

                if (i == 1)
                {
                    Label2.Text = " Please Give valid date ";
                }
                else
                {
                    Label2.Text = "";
                }

            }
            else
            {
                Label2.Text = "";
            }
        }
    }
}