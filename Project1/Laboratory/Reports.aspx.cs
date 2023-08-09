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
            fillGrid();
            Panel1.Visible = false;
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_booking b inner join tbl_user u on b.user_id=u.user_id inner join tbl_testhead th on th.testhead_id=b.testhead_id where b.book_status='approved appoinment request' and b.report_status='0' and b.payment_status='payed' and th.lab_id='" + Session["lid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            obj.FillGridView(setQuery, GridView1);
        }
        else
        {
            Label2.Text = "No Patients complete their payments.After completion of patient's transaction you will enable report details..";
            //Response.Write("No Patients complete their payments.After completion of patient's transaction you will enable report details..");
        }
        //SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //Session["userid"] = dt.Rows[0]["user_id"].ToString();


    }

   


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "vm")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["bookid"] = id;
            Panel1.Visible = true;
           /* String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id inner join tbl_user u on u.user_id=b.user_id inner join tbl_finalreport fr on fr.book_id=b.book_id where b.book_id='" + id + "' and th.lab_id='"+Session["lid"]+"' and fr.test_id=t.test_id";
            SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            int s1 = dt.Rows.Count;*/

            String setQuery1 = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + id + "' and th.lab_id='" + Session["lid"] + "' and td.testreport_status='0'";
            SqlDataAdapter adp1 = new SqlDataAdapter(setQuery1, con);
            DataTable dt1 = new DataTable();
            adp1.Fill(dt1);

            /*if (s1<=0)
            {*/
                GridView2.DataSource = dt1;
                GridView2.DataBind();
                //Session["count"] = dt.Rows.Count.ToString();
            /*}*/
           // obj.FillGridView(setQuery, GridView2);
         

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "rep")
        {
            String setQuery1 = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "' and th.lab_id='"+Session["lid"]+"'";
            SqlDataAdapter adp1 = new SqlDataAdapter(setQuery1, con);
            DataTable dt1 = new DataTable();
            adp1.Fill(dt1);
            Session["userid"] = dt1.Rows[0]["user_id"];
            Session["labid"] = dt1.Rows[0]["lab_id"];
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["testid"] = idNo;
            //Session["labid"] = Session["uid"]; 
            Response.Redirect("./Enter Result1.aspx");
        }
    }
}