using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class User_Regestration : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\userside.mdf;Integrated Security=True;User Instance=True");

        CaptchaControl1.ValidateCaptcha(TextBox1.Text);

        if (CaptchaControl1.UserValidated)
        {


            string str;
            //str = "select * from registration phoneno=Convert.ToInt64";
            str = "Insert into registration(username,emailid,password,address,city,phoneno,gender,birthdate)values('" + txtusername.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + txtadd.Text + "','" + DropDownList1.Text + "', '" + txtphoneno.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtbirthdate.Text + "')";
            //Class   object     Class
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            cmd.ExecuteNonQuery();

            //for insert,update & delete query...
            Response.Redirect("Userlogin.aspx");
            con.Close();

        }

        else
        {
            Label1.Text = "not match";
        }


    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        txtbirthdate.Text = " ";
        txtemailid.Text = " ";
        txtpassword.Text = " ";
        txtphoneno.Text = " ";
        txtusername.Text = " ";
        RadioButtonList1.SelectedItem.Selected = false;
    }

    protected void txtphoneno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtbirthdate_TextChanged(object sender, EventArgs e)
    {

        if (IsPostBack == true)
        {
          
            DateTime date1 = Convert.ToDateTime(txtbirthdate.Text);
            DateTime date2 = System.DateTime.Now;
            if (date1 >= date2)
            {

                int i = DateTime.Compare(Convert.ToDateTime(date1), Convert.ToDateTime(date2));

                if (i == 1)
                {
                    Label4.Text = " Please Give valid date ";
                }
                else if (i == 0)
                {
                    Label4.Text = "";
                }
                else
                {
                    Label4.Text = "";
                }

            }
            else
            {
                Label4.Text = "";
            }
            }
    }
    }
        
               
        


        
