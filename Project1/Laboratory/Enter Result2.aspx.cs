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
        con.Open();
        //fillDisplay();
        fillGrid();
    }
    /*protected void fillDisplay()
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
    }*/
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
        string inss = "insert into tbl_tstresult(book_id,test_id) values('" + Session["bookid"] + "','" + Session["testid"] + "')";
        SqlCommand cmd = new SqlCommand(inss, con);
        cmd.ExecuteNonQuery();

        string sell = "select max(testrslt_id) as rid from tbl_tstresult";

        SqlDataAdapter adp = new SqlDataAdapter(sell, con);
        DataTable dtl = new DataTable();
        adp.Fill(dtl);
        int id1 = Convert.ToInt32(dtl.Rows[0]["rid"].ToString());
        
        string strname = string.Empty;
        string price = string.Empty;
        string str = string.Empty;
        string price1 = string.Empty;
        foreach (GridViewRow row in GridView1.Rows)
        {
            
            /*HiddenField hf = row.Cells[0].FindControl("HiddenField1") as HiddenField;
            str = hf.Value.ToString();
            Session["particularid"] = str;*/

            string selQ = "select * from tbl_tstresult tr inner join tbl_tstreport tp on tr.testrslt_id=tp.testrslt_id where tr.book_id='" + Session["bookid"] + "' and tr.test_id='" + Session["testid"] + "' and tp.particular_id='" + Session["particularid"] + "' ";
            SqlDataAdapter adpq = new SqlDataAdapter(selQ, con);
            DataTable dtq = new DataTable();
            adpq.Fill(dtq);


            if (dtq.Rows.Count>0)
            {
                Response.Write("<script>alert('You already entered this parameter.')</script>");
                fillGrid();
            }
            else
            {
                
                TextBox tb2 = (TextBox)row.FindControl("TextBox1");
                //price = tb2.ToString();
                //price1 = price.ToString();
                price = Convert.ToString(tb2.Text);


                

                savedata(id1,price);
                fillGrid();
            }

        }
       // EmptyGridView();
       // Label4.Text = "Data Has Been Saved";
    }
    public void savedata(int tstresultid, string amount)
    {
        String query = "insert into tbl_rep(testrslt_id,present) values(" + tstresultid + "," + amount + ")";
        //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=purchasedatabase; Integrated Security=true";
        //SqlConnection con = new SqlConnection(mycon);
        //con.Open();
        SqlCommand cmd = new SqlCommand(query,con);
        //cmd.CommandText = query;
        //cmd.Connection = con;
        cmd.ExecuteNonQuery();
        fillGrid();



    }

}