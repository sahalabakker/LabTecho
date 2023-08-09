using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Laboratory_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    CommonClass obj = new CommonClass();
    static int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        //idNo = Convert.ToInt32(e.CommandArgument.ToString());
        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id where th.lab_id='"+ Session["lid"] + "' and b.book_id='"+ Session["bookid"] +"'";
        //obj.FillGridView(setQuery, GridView1); 
        SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();



    }
    
}