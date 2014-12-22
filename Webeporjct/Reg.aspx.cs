using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Webeporjct
{
    public partial class Reg : System.Web.UI.Page
    {
         readonly string cnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsernamereg.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cnString);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [Customer] (CustomerName,CustomerAdd,CustomerPhone,CustomerPass,CustomerRole) values(@CustomerName,@CustomerAdd,@CustomerPhone,@CustomerPass,@CustomerRole)", con);
            cmd.Parameters.AddWithValue("@CustomerName", txtUsernamereg.Text);
            cmd.Parameters.AddWithValue("@CustomerAdd", txtCusAddress.Text);
            cmd.Parameters.AddWithValue("@CustomerPhone", txtCusPhone.Text);
            cmd.Parameters.AddWithValue("@CustomerPass", txtPass.Text);
            cmd.Parameters.AddWithValue("@CustomerRole",0);

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            catch
            {
                Response.Write("Error ! Please try again");
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            txtCusAddress.Text = "";
            txtCusPhone.Text = "";
            txtPass.Text = "";
            txtRetype.Text = "";
            txtUsernamereg.Text = "";
        } 

    }
}
