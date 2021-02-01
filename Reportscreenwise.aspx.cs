﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//namespace for crystal report.
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Reportscreenwise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Connection string replace 'databaseservername' with your db server name
        string sqlCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(sqlCon);

        String str;
        str = "select * from Booking_Master where screenname ='" + DropDownList1.SelectedItem.Value + "'";
        // str = "select * from employee where  JoiningDate>='3/24/2012' and JoiningDate<='3/26/2012' ";


        SqlDataAdapter da = new SqlDataAdapter(str, con);


        DataSet ds;

        ds = new DataSet();

        da.Fill(ds);


        ReportDocument report = new ReportDocument();


        string reportPath = Server.MapPath("screenwise.rpt");
        report.Load(reportPath);

        report.SetDataSource(ds.Tables[0]);
        CrystalReportViewer1.ReportSource = report;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.RefreshReport();
    }
}