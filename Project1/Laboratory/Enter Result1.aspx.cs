using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Laboratory_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            for (int i = 0; i < 3; i++)
            {
                fillDisplay();
                fillGrid();
            }
        }
    }
    
    protected void fillDisplay()
    {
        string sel = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "' and td.test_id='" + Session["testid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
        Label1.Text = dt.Rows[0]["first_name"].ToString();
        Label3.Text = dt.Rows[0]["test_name"].ToString();
        Label4.Text = dt.Rows[0]["user_gender"].ToString();
        Label5.Text = dt.Rows[0]["lab_id"].ToString();
        //Label6.Text = Session["count"].ToString();
    }
    protected void fillGrid()
    {
        string selQ = "select * from tbl_particulars where test_id='" + Session["testid"] + "'";
        SqlDataAdapter adap = new SqlDataAdapter(selQ, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
    protected void btnnext_Click(object sender, EventArgs e)
    {
        con.Open();
        string strname = string.Empty;
        string str = string.Empty;
        string s = string.Empty;
        //string present = string.Empty;

        string inss = "insert into tbl_tstresult(book_id,test_id) values('" + Session["bookid"] + "','" + Session["testid"] + "')";
        SqlCommand cmd = new SqlCommand(inss, con);
        cmd.ExecuteNonQuery();

        string sell = "select max(testrslt_id) as rid from tbl_tstresult";

        SqlDataAdapter adp = new SqlDataAdapter(sell, con);
        DataTable dtl = new DataTable();
        adp.Fill(dtl);
        int id1 = Convert.ToInt32(dtl.Rows[0]["rid"].ToString());

        foreach (GridViewRow row in GridView1.Rows)
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        {
           
                HiddenField hf = row.Cells[0].FindControl("HiddenField2") as HiddenField;
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

                    /*TextBox box1 = (TextBox)row.FindControl("TextBox1");
                    //int s1 = Int32.Parse(box1.Text);
                    int s1 = Convert.ToInt32(box1.Text);
                    box1.Text = s1.ToString();
                    //string s1 = box1.Text;*/
                    TextBox tb2 = (TextBox)row.FindControl("TextBox1");
                    Int32 price = Convert.ToInt32(tb2.Text);


                    


                    string insr = "insert into tbl_tstreport(testrslt_id,particular_id,present) values ('" + id1 + "','" + Session["particularid"] + "',"+ price + ")";
                    SqlCommand cmd1 = new SqlCommand(insr, con);
                    cmd1.ExecuteNonQuery();
                }
                fillGrid();
                
        }
        Response.Redirect("Provide Report.aspx");        
    }
    
}