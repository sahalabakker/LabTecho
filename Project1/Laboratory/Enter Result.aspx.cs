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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            fillDisplay();
            fillGrid();
        }

        
    }
    protected void fillDisplay()
    {
        string selQry = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "' and td.test_id='" + Session["testid"] + "' ";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        lblpname.Text = dt.Rows[0]["first_name"].ToString();
        lbltest.Text = dt.Rows[0]["test_name"].ToString();
        //Label3.Text = "";
        lblgender.Text = dt.Rows[0]["user_gender"].ToString();
        //Label5.Text = DateTime.Now.ToShortDateString().ToString();
        lbllab.Text = dt.Rows[0]["lab_id"].ToString();
        Session["tid"] = dt.Rows[0]["test_id"].ToString();
        //fillGrid();
    }
    protected void fillGrid()
    {
        string sel = "select * from tbl_particulars where test_id='" + Session["tid"] + "'"; 
        obj.FillGridView(sel, GridView1);
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        string value = string.Empty;
        string str = string.Empty;
        foreach (GridViewRow gvr in GridView1.Rows)
        {
            HiddenField hf = gvr.Cells[0].FindControl("HiddenField3") as HiddenField;
            str = hf.Value.ToString();
            Session["particularid"] = str;

            string selQ = "select * from tbl_tstresult tr inner join tbl_tstreport tp on tr.testrslt_id=tp.testrslt_id where tr.book_id='" + Session["bookid"] + "' and tr.test_id='" + Session["testid"] + "' and tp.particular_id='" + Session["particularid"] + "' ";
            SqlDataAdapter adpq = new SqlDataAdapter(selQ, con);
            DataTable dtq = new DataTable();
            adpq.Fill(dtq);

            if (dtq.Rows.Count > 0)
            {

                Response.Write("<script>alert('You already entered this parameter.')</script>");
                fillGrid();

            }
            else
            {
                TextBox tb = (TextBox)gvr.FindControl("txtrslt");
                //tb.Text = "It worked";
                string txt = tb.Text;

                string inss = "insert into tbl_tstresult(book_id,test_id) values('" + Session["bookid"] + "','" + Session["testid"] + "')";
                SqlCommand cmd = new SqlCommand(inss, con);
                cmd.ExecuteNonQuery();

                string sell = "select max(testrslt_id) as rid from tbl_tstresult";

                SqlDataAdapter adp = new SqlDataAdapter(sell, con);
                DataTable dtl = new DataTable();
                adp.Fill(dtl);
                int id1 = Convert.ToInt32(dtl.Rows[0]["rid"].ToString());

                Page.Response.Write("tb: " + tb + "<br>");
                Page.Response.Write("txt: " + txt + "<br>");

                string ins = "insert into tbl_tstreport (testrslt_id,particular_id,present) values('"+id1+"','"+Session["particularid"]+"','" + txt + "')";
                SqlCommand cmd1 = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();
            }
        }

        Response.Redirect("Provide Report.aspx");
    }
    
}