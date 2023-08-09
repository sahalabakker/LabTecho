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
    private decimal totalamount = (decimal)0.0;
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDisplay();
            fillGrid();
        }
    }
    protected void fillDisplay()
    {
        SqlCommand cmd2 = new SqlCommand("select max(book_id) from tbl_booking", con);

        string a = Convert.ToString(cmd2.ExecuteScalar());
        Session["bid"] = a.ToString();
        string selQry = "select * from tbl_user u inner join tbl_booking b on b.user_id=u.user_id where b.book_id='"+Session["bid"]+"'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Label1.Text = dt.Rows[0]["first_name"].ToString();
        Label2.Text = dt.Rows[0]["age"].ToString();
        Label3.Text = dt.Rows[0]["user_gender"].ToString();
        Label4.Text = dt.Rows[0]["pref_date"].ToString();
        
        Session["uname"] = dt.Rows[0]["first_name"].ToString();
    }
    protected void fillGrid()
    {
        string selQry1 = "select * from tbl_test t inner join tbl_testdetails td on td.test_id=t.test_id inner join tbl_testhead th on th.testhead_id=td.testhead_id where th.testhead_id='"+Session["testhead"]+"' and td.testhead_id='"+ Session["testhead"]+"'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry1, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        GridView2.DataSource = dt; 
        GridView2.DataBind();
        Session["testheadid1"] = dt.Rows[0]["testhead_id"].ToString();
        Session["testfieldid"] = dt.Rows[0]["testfield_id"].ToString();
        /*object sumObject;
        sumObject = dt.Compute("Sum(test_amount)", string.Empty);
        int amount = Convert.ToInt32(sumObject.ToString());
        Session["amount"] = amount;
       // Label1.Text = amount.ToString();*/
        
        //Session["amount"] = totamount;
    }
    protected void btnreq_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert(' Your Booking successfully completed.Sample Collection has to be done your preffered date')</script>");
        string selQry2 = "select * from tbl_test t inner join tbl_testdetails td on td.test_id=t.test_id inner join tbl_testhead th on th.testhead_id=td.testhead_id where th.testhead_id='" + Session["testhead"] + "' and td.testhead_id='" + Session["testhead"] + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(selQry2, con);
        DataTable dt1 = new DataTable();
        adp1.Fill(dt1);
        /*Decimal Totprice = Convert.ToDecimal(dt1.Compute("SUM(test_amount)", string.Empty));
        Session["amount"] = Totprice;*/

        SqlCommand cmd2 = new SqlCommand("select max(book_id) from tbl_booking", con);

        string a = Convert.ToString(cmd2.ExecuteScalar());
        Session["bid"] = a.ToString();

        string insQry = "update tbl_booking set book_date='"+ DateTime.Now +"',testhead_id='"+ Session["testhead"]+"', book_status='Appoinment awaiting approval',tot_amount='"+ Session["amount"]+"',report_status='0',payment_status='not payed',sample_status='Not collected yet' where user_id='"+Session["uid"]+"' and book_id='"+ Session["bid"]+"'";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        string up = "update tbl_testdetails set book_id='" + Session["bid"] + "' where testhead_id='" + Session["testhead"] + "'";
        SqlCommand cmd1 = new SqlCommand(up, con);
        cmd1.ExecuteNonQuery();
       /* string sell = "select max(book_id) as bid from tbl_booking";

        SqlDataAdapter adp = new SqlDataAdapter(sell, con);
        DataTable dtl = new DataTable();
        adp.Fill(dtl);
        int id1 = Convert.ToInt32(dtl.Rows[0]["bid"].ToString());
        string inQ="insert into tbl_stest (book_id,test_id) values ('"+id1+"','"+Session["testid"]+"')";
        SqlCommand cmdt = new SqlCommand(inQ, con);
        cmdt.ExecuteNonQuery();*/

       //Response.Write('');
        //Response.Write("totamount")
       // Response.Write("<script>alert(' Sample Collection has to be done your preffered date')</script>");
       // Response.Redirect("./Home.aspx");
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalamount += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "test_amount"));
            Session["amount"] = totalamount;

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[2].Text = string.Format("{0:c}", totalamount);
        }
    }
}