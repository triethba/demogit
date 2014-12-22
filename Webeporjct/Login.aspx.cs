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
    public partial class Login : System.Web.UI.Page
    {
             string cnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public void login(string id, string pass)
        {
            if (id.Length > 0 && pass.Length > 0)
            {
                try
                {
                    SqlConnection con = new SqlConnection(cnString);
                    SqlCommand cmd = new SqlCommand(String.Format("select * from Customer where CustomerName = '{0}'", id), con);
                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        if (rd.Read())
                        {
                            if (rd["CustomerPass"].ToString() == pass)
                            {
                                lblErrorMsg.Visible = false;
                                if (CheckBox1.Checked == true)
                                {
                                    Response.Cookies["IdCookie"].Value = txtUsername.Text.Trim();
                                    Response.Cookies["IdCookie"].Expires = DateTime.Now.AddDays(30);
                                    Response.Cookies["PassCookie"].Value = txtPassword.Text.Trim();
                                    Response.Cookies["PassCookie"].Expires = DateTime.Now.AddDays(30);
                                }
                                if (Convert.ToInt32(rd["CustomerRole"]) == 1)
                                {
                                    Session.Add("AdminSession", id);
                                    Response.Redirect("Admin.aspx");
                                }
                                else
                                {
                                    Session.Add("UserSession", id);
                                    Response.Redirect("User.aspx");
                                }
                            }
                            else
                            {
                                lblErrorMsg.Text = "Password Incorrect";
                                lblErrorMsg.Visible = true;
                            }
                        }
                        else
                        {
                            lblErrorMsg.Text = "Username Incorrect ";
                            lblErrorMsg.Visible = true;
                        }
                    }
                    if (con.State == ConnectionState.Open)
                        con.Close();
                }
                catch
                {

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["IdCookie"] != null && Request.Cookies["PassCookie"] != null)
                    login(Request.Cookies["IdCookie"].Value, Request.Cookies["PassCookie"].Value);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
        }

    }
  }