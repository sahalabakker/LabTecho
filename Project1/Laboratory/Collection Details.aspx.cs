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
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    public int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnpend_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        fillGrid1();
        
    }
    protected void fillGrid1()
    {
        string sel = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id inner join tbl_testhead th on th.testhead_id=b.testhead_id where book_status='approved appoinment request' and sample_status='Not collected yet' and th.lab_id='" + Session["lid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "test")
        {
            MultiView1.ActiveViewIndex = 1; 
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bookid"] = idNo;
            fillGrid2();
            
            
        }
    }
    protected void fillGrid2()
    {
        string selQ = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_user u on u.user_id=b.user_id where b.book_status='approved appoinment request' and sample_status='Not collected yet' and th.lab_id='" + Session["lid"] + "' and b.book_id='" + Session["bookid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(selQ, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        //Session["testid"] = dt.Rows[0]["test_id"].ToString();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "collect")
        {
            MultiView1.ActiveViewIndex = 2;
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["testid"] = idNo;
            fillDisplay();
        }
    }
    protected void fillDisplay()
    {
        string selQry = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        Label1.Text = dt.Rows[0]["first_name"].ToString();
        Label2.Text = dt.Rows[0]["user_email"].ToString();
        //Label3.Text = dt.Rows[0][""].ToString();
        Label4.Text = dt.Rows[0]["user_gender"].ToString();
        Session["userid"] = dt.Rows[0]["user_id"].ToString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_sample (user_id,book_id,lab_id,collected_date,collected_time) values ('" + Session["userid"] + "','" + Session["bookid"] + "','" + Session["lid"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
        obj.ExecuteCommands(ins);
        string upQ = "update tbl_booking set sample_status='Sample collected successfully' where book_id='"+ Session["bookid"]+"'";
        obj.ExecuteCommands(upQ);
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label1.Text= "";
        Label2.Text = "";
        Label4.Text = "";
        //fillGrid2();
        Response.Redirect("Collection Details.aspx");
    }
    protected void btnhis_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        fillGrid3();
    }
    protected void fillGrid3()
    {
        string selQuery = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id inner join tbl_testhead th on th.testhead_id=b.testhead_id where th.lab_id='" + Session["lid"] + "' and b.book_status='approved appoinment request'";
        SqlDataAdapter adap = new SqlDataAdapter(selQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView3.DataSource = dt;
        GridView3.DataBind();
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "test")
        {
            MultiView1.ActiveViewIndex = 4;
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bkid"] = idNo;
            fillGrid4();
        }
    }
    protected void fillGrid4()
    {
        string sell = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id where b.book_id='" + Session["bkid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(sell, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView4.DataSource = dt;
        GridView4.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        //idNo = Convert.ToInt32(e.CommandArgument.ToString());
        //Session["testid"] = idNo;
        fillDisplay();
    }
}