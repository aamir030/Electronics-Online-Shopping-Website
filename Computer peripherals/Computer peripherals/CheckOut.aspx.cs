using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class CheckOut1 : System.Web.UI.Page
{
    int ck;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {        
        Label1.Text = "";
        Label2.Text = "";
        if (!IsPostBack)
        {

            DropDownList1.Items.Add("Select");
            DropDownList1.Items.Add("Ontario");
            DropDownList1.Items.Add("Quebec");
            DropDownList1.Items.Add("Nova Scotia");
            DropDownList1.Items.Add("New Brunswick");
            DropDownList1.Items.Add("Manitoba");
            DropDownList1.Items.Add("British Columbia");
            DropDownList1.Items.Add("Prince Edward Island");
            DropDownList1.Items.Add("Saskatchewan");
            DropDownList1.Items.Add("Alberta");
            DropDownList1.Items.Add("Newfoundland and Labrador");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        DropDownList1.Items.Clear();
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)

            Label1.Text = "Please select state";
        else
        {

            Label2.Text = "Thanks for shopping with us";
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ck = 1;   
        Response.Redirect("Home.aspx?ck=" + ck);
    }
}