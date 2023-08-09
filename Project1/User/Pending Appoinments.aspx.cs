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
    public int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        fillGrid();
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_labregistration l on l.lab_id=th.lab_id where book_status='appoinment awaiting approval' and b.user_id='" + Session["uid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}