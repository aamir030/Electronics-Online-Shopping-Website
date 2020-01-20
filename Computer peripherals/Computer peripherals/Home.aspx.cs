using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Home1 : System.Web.UI.Page
{
    int pgcnt;
    String cartname;
    int id;
    static int cnt=0;
    int qty;
    String prname;
    int prprice;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
            
        String query = "select * from Category";
        String query1 = "select * from Product";
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            adp.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            SqlDataAdapter adp1 = new SqlDataAdapter(query1, con);
            adp1.Fill(ds1);
            DataList2.DataSource = ds1;
            DataList2.DataBind();
        }

    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("Click"))
        {
            int id = Convert.ToInt32(e.CommandArgument);
            String query =
        "select * from Product where Category = (select Categoryname from Category where Id = " + id + ")";
            DataSet ds = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            adp.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();

        }

    }


    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        cnt = cnt + 1 ;
        Label1.Visible = true;
        Label1.Text =  cnt.ToString();
        Boolean flag = false;


        if (e.CommandName.Equals("Click"))
        {
            id = Convert.ToInt32(e.CommandArgument);    //id of selected product
            SqlCommand product = new SqlCommand("select Name,Price from Product where Id = " + id, con);
            SqlCommand cart = new SqlCommand("select Name,Quantity from Cart", con);
            con.Open();

            SqlDataReader pr = product.ExecuteReader();
            while (pr.Read())
            {
                prname = pr["Name"].ToString(); // name of product which is selected
                prprice = Convert.ToInt32(pr["Price"]); // price of product which is selected
            }
            con.Close();
            con.Open();

            SqlDataReader dr = cart.ExecuteReader();
            while (dr.Read())
            {
                cartname = dr["Name"].ToString();// reading 1st row name of cart table
                qty = Convert.ToInt32(dr["Quantity"]); //getting quantity of selected product
                if (prname.Equals(cartname) == true)// comparing productname with the name of the selected product
                {

                    flag = true;    //the product is selected once

                }
            }
            con.Close();
            if (flag == true)
            {
                qty = qty + 1;
                SqlCommand update = new SqlCommand("update Cart set Quantity = "
                + qty + ",Total = " + (qty * prprice) + " where Name = '" + prname + "'", con);

                con.Open();
                update.ExecuteNonQuery();
                con.Close();
                // update quanity and total of record in cart table

            }
            if (flag == false)
            {
                qty = 1;
                SqlCommand insert = new SqlCommand("insert into Cart values ('" + prname + "'," +
                    qty + "," + prprice + "," + (qty * prprice) + ")", con);
                //inserting record in cart table

                con.Open();
                insert.ExecuteNonQuery();
                con.Close();
            }
        }

    }
}


