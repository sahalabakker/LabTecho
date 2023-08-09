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
    static int idNo,flag;
    public int count1 = 0;
    public int countdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {

            fillDisplay();
            fillGrid(); 
            Panel1.Visible = false;
        }
    }
   
    protected void fillDisplay()
    {
        string selQry = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='"+Session["bookid"]+"' and td.test_id='"+Session["testid"]+"' " ;
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Label8.Text = dt.Rows[0]["user_id"].ToString();
        Label9.Text = dt.Rows[0]["first_name"].ToString();
        Label10.Text = Session["labid"].ToString();
        Label13.Text = DateTime.Now.ToShortDateString().ToString();
        Label15.Text = dt.Rows[0]["user_gender"].ToString();
        //Label16.Text = Session["count"].ToString();

        //countdt = Convert.ToInt32(Session["count"].ToString());
        //Label17.Text = countdt.ToString();
    }

    protected void fillGrid()
    {
        string sel = "select * from tbl_tstreport trp inner join tbl_tstresult tr on tr.testrslt_id=trp.testrslt_id inner join tbl_particulars tp on tp.particular_id=trp.particular_id where tr.test_id='"+Session["testid"]+"' and tr.book_id='"+Session["bookid"]+"'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt); 
        GridView3.DataSource = dt;
        GridView3.DataBind();
    }

    
   /* protected void ddlcontent_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel2 = "select * from tbl_tstfield where tstfield_id='" +ddlcontent.SelectedValue +"'";
        SqlDataAdapter adp2 = new SqlDataAdapter(sel2, con);
        DataTable dt2 = new DataTable();
        adp2.Fill(dt2);
       
    }*/
   /* protected void fillGrid()
    {
        

        string sel2 = "select max(testrslt_id) as rid from tbl_tstresult";

        SqlDataAdapter adp2 = new SqlDataAdapter(sel2, con);
        DataTable dt2 = new DataTable();
        adp2.Fill(dt2);
        int id1 = Convert.ToInt32(dt2.Rows[0]["rid"].ToString());
         
        string selq = "select * from tbl_tstresult tr inner join tbl_tstreport tp on tp.testrslt_id=tr.testrslt_id inner join tbl_tstfield tf on tf.tstfield_id=tp.tstfield_id where tr.book_id='"+ Session["bookid"]+"' and tr.test_id='"+ Session["testid"]+"' "; 
        SqlDataAdapter adp3 = new SqlDataAdapter(selq, con);
        DataTable dt3 = new DataTable(); 
        adp3.Fill(dt3);

        //adp3.Fill(dt3);
        GridView2.DataSource = dt3;
        GridView2.DataBind();
       // string insQry = "update tbl_booking set report_status='1' where book_id='"+Session["b_id"]+"'";
       // SqlCommand cmd = new SqlCommand(insQry, con);
        //cmd.ExecuteNonQuery();
    }*/
    protected void btnmail_Click(object sender, EventArgs e)
    {

        Response.Redirect("Send report.aspx");
    }

    protected void btnnxt_Click(object sender, EventArgs e)
    {
        Response.Redirect("./test report.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
            Panel1.Visible = true;
        
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
       // int count1=0;

        string upp = "update tbl_testdetails set testreport_status='1' where book_id='" + Session["bookid"] + "' and test_id='"+ Session["testid"]+"'";
        SqlCommand cmdd = new SqlCommand(upp, con);
        cmdd.ExecuteNonQuery();

        string fileName = Path.GetFileName(filerslt.PostedFile.FileName.ToString());
        filerslt.SaveAs(Server.MapPath("./sended reports/" + fileName));
        string insQry = "insert into tbl_finalreport (book_id,test_id,results,report_status) values('"+ Session["bookid"]+"','"+Session["testid"]+"','" + fileName + "','1') ";
        SqlCommand cmd = new SqlCommand(insQry, con); 
        cmd.ExecuteNonQuery();

       /* string up = "update tbl_testdetails set testreport_status='1' where book_id='" + Session["book_id"] + "' and test_id='" + Session["testid"] + "'";
        SqlCommand cmd1 = new SqlCommand(up, con);
        cmd1.ExecuteNonQuery();*/

        string s = "select * from tbl_finalreport where book_id='" + Session["bookid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(s, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        int c = Convert.ToInt32(dt.Rows.Count.ToString());

        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "' and th.lab_id='" + Session["lid"] + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(setQuery, con);
        DataTable dt1 = new DataTable();
        adp1.Fill(dt1);
        int c2 = Convert.ToInt32(dt1.Rows.Count.ToString());
        
        if (c2 > c)
        {
            Response.Redirect("Reports.aspx");
        }
        //count1 = count1 + 1;

       /* String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id inner join tbl_testtype tt on tt.testtype_id=t.testtype_id inner join tbl_user u on u.user_id=b.user_id where b.book_id='" + Session["bookid"] + "' and th.lab_id='" + Session["lid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        int counts = dt.Rows.Count;
        if (count1 < counts)
        {
            count1++;
            Response.Redirect("Reports.aspx");
        }*/
        else
        {
            string up1 = "update tbl_booking set report_status='1' where book_id='" + Session["bookid"] + "'";
            SqlCommand cmd2 = new SqlCommand(up1, con);
            cmd2.ExecuteNonQuery();
            Panel1.Visible = false;
            Response.Redirect("Home.aspx");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Enter Result.aspx");
    }
}