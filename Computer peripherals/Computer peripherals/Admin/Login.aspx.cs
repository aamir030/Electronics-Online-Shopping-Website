using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string id= WebConfigurationManager.AppSettings["LoginId"];
        string password = WebConfigurationManager.AppSettings["password"]; 
        if(txtusername.Text == id && txtpassword.Text == password)
        {
            lblAlert.Text = "";
            Session["Admin"] = "Admin";
            Response.Redirect("~/Computer peripherals/Admin/AddNewCategory.aspx");
        }
        else
        {
            lblAlert.Text = "Invalid credentials";
        }
    }
}