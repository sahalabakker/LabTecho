using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    CommonClass obj = new CommonClass();
    static int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_testhead th inner join tbl_booking b on th.testhead_id=b.testhead_id inner join tbl_testdetails dt on dt.testfield_id=b.testfield_id inner join tbl_test t on t.test_id=dt.test_id where b.user_id='"+Session["uid"]+"' ";
        obj.FillGridView(setQuery, GridView1);
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);


    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "pay")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_booking where book_id='" + idNo + "'";
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            Session["userid"] = dt.Rows[0]["user_id"].ToString();
            Session["amount"] = dt.Rows[0]["tot_amount"].ToString();
            Session["bookid"] = idNo;
            Response.Redirect("Payment/First.aspx");

        }
    }
}