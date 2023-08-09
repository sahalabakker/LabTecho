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
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    public int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnapprove_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 0;
        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_labregistration l on l.lab_id=th.lab_id where b.user_id='" + Session["uid"] + "' and b.book_status='approved appoinment request' ";
        //obj.FillGridView(setQuery, GridView1); 
        SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            fillGrid();
        }
        else
        {
            Response.Write("No Records for completion of payment!!!!");
        }
    }

    protected void fillGrid()
    {
        
        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_labregistration l on l.lab_id=th.lab_id where b.user_id='" + Session["uid"] + "' and b.book_status='approved appoinment request'";
        //obj.FillGridView(setQuery, GridView1); 
        SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        Session["amount"] = dt.Rows[0]["tot_amount"];
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btnpend_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 1;
        fillGrid2();
    }
    protected void fillGrid2()
    {
        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_labregistration l on l.lab_id=th.lab_id where b.user_id='" + Session["uid"] + "' and b.book_status='Appoinment awaiting approval'";
        obj.FillGridView(setQuery, GridView2); 
    }

   

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "test")
        {
            MultiView2.ActiveViewIndex = 2;
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            fillGrid3();
        }
        if (e.CommandName == "pay")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bookid"] = idNo;
            Response.Redirect("./Payment/First.aspx");
        }
    }
    protected void fillGrid3()
    {
        string sel = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id where b.book_id='" + idNo + "'";
        obj.FillGridView(sel, GridView3);
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "tst")
        {
            MultiView2.ActiveViewIndex = 3;
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bookid"] = idNo;
            fillGrid4();
        }
    }
    protected void fillGrid4()
    {
        string selQ="select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id where b.book_id='" + idNo + "'";
        obj.FillGridView(selQ, GridView4);
    }
    protected void btnhis_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 4;
        fillGrid5();
    }
    protected void fillGrid5()
    {
        string sels = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_labregistration l on l.lab_id=th.lab_id where b.user_id='" + Session["uid"] + "'";
        
        obj.FillGridView(sels, GridView5);
    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "test5")
        {
            MultiView2.ActiveViewIndex = 2;
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            fillGrid3();
        }
    }
}