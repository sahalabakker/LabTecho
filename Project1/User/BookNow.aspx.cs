using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDisplay();
        }
    }
    protected void fillDisplay()
    {
        string selQry = "select * from tbl_test t inner join tbl_testtype tt on t.testtype_id=tt.testtype_id where test_id = '" + Session["testid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txttname.Text = dt.Rows[0]["test_name"].ToString();
        txtttype.Text = dt.Rows[0]["testtype_name"].ToString();
        txtamount.Text = dt.Rows[0]["test_amount"].ToString();
        txttime.Text = dt.Rows[0]["test_time"].ToString();
        txtctime.Text = dt.Rows[0]["test_ctime"].ToString();
        //txtlname.Text = dt.Rows[0]["last_name"].ToString();
        //txtemail.Text = dt.Rows[0]["user_email"].ToString();
        //txtaddress.Text = dt.Rows[0]["user_address"].ToString();
        //txtphone.Text = dt.Rows[0]["user_phone"].ToString();
        //txtdob.Text = dt.Rows[0]["user_dob"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_booking (book_date,user_id,test_id,book_status) values('" + DateTime.Now.ToShortDateString() + "','" + Session["uid"] + "','" + Session["testid"] + "','0')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        txtttype.Text = "";
        txttname.Text = ""; 
        txtamount.Text = "";
        txttime.Text = "";
        txtctime.Text = "";
    }
}