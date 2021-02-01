using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s = DateTime.Now.ToShortDateString();
        s = s.Replace(@"/", "-") + ".mdf";

       // System.IO.File.Copy(Server.MapPath(".") + @"\app_data\" + @"\userside.mdf", Server.MapPath("") + "/" + s);


        Label2.Text = "Backup Completed Successfully.";


    }
}