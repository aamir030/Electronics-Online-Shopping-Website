using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Cart : System.Web.UI.Page
{
    int check;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lstdisp2.Visible = false;

            String query = "select Id,Name,Price,Quantity,Total from Cart";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            lstdisp.Items.Clear();
            while (reader.Read())
            {
                lstdisp2.Items.Add(reader["Id"].ToString());
                lstdisp.Items.Add("ProductName = \t" + reader["Name"].ToString() +
                    " \t---- Price = " + reader["Price"].ToString()
                     + " \t---- Quantity = " + reader["Quantity"].ToString()
                     + " \t---- Total Price = " + reader["Total"].ToString()
                      );
            }


            con.Close();
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        check = 1;
        Response.Redirect("Home.aspx? check =" + check);
             
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("CheckOut.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (lstdisp.SelectedIndex == -1)
        {

            Label1.Text = "Please select a record to delete";

        }
        else
        {
            RemoveItem(Convert.ToInt32(lstdisp.SelectedIndex));
            lstdisp.Items.Remove(lstdisp.SelectedItem);
        }

    }
    private int RemoveItem(int id)
    {
        int x;
        for (x = 0; x <= lstdisp2.Items.Count; x++)
        {
            if (x == id)
            {
                String query = "delete from Cart where Id = " + lstdisp2.Items[x];
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return 0;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lstdisp.Items.Clear();
        String query = "delete from Cart";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

   
}
