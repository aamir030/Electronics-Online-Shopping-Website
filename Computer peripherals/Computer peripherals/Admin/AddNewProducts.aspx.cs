using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_AddNewProducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "select Categoryname,Id from Category";

        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            adp.Fill(ds);
            ddlcategory.DataSource = ds;
            ddlcategory.DataTextField = "Categoryname";
            ddlcategory.DataValueField = "Categoryname";
            ddlcategory.DataBind();
            ddlcategory.Items.Insert(0, new ListItem(String.Empty, String.Empty));
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs("C:\\Users\\Aamir\\Desktop\\Computer peripherals\\ProductImages\\" + FileUpload1.FileName);
        }
        
        String query = "insert into Product values('" + txtproductname.Text + "','"
            + ddlcategory.SelectedItem.Value + "','" + txtproductdescription.Text + "','"
            + FileUpload1.FileName + "'," + txtprice.Text + ")";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
}