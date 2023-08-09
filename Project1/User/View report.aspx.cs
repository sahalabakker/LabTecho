using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class User_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            //fillContent();

        }
    }
    protected void fillContent()
    {
        //string selQry1 = "select * from tbl_finalreport fr inner join tbl_test t on t.test_id=fr.test_id where fr.book_id='"+txtbid.Text+"'";
        string selQry1 = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_testdetails td on td.testhead_id=th.testhead_id inner join tbl_test t on t.test_id=td.test_id where b.book_id='" + txtbid.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry1, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        //DataTable dt = obj.GetDataTable(selQry1);
        ddltest.DataSource = dt;
        ddltest.DataTextField = "test_name";
        ddltest.DataValueField = "test_id";
        ddltest.DataBind();
        ddltest.Items.Insert(0, "--select--");



    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fillGrid();
    }
    protected void fillGrid()
    {
        string s = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id where b.book_status='approved appoinment request' and b.sample_status='Sample collected successfully' and payment_status='payed' and report_status='0' and b.book_id='"+ txtbid.Text+"'";
        SqlDataAdapter adp = new SqlDataAdapter(s, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        string se = "select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id where b.book_status='approved appoinment request' and b.sample_status='Sample collected successfully' and payment_status='not payed' and report_status='0' and b.book_id='"+ txtbid.Text+"'";
        SqlDataAdapter adpse = new SqlDataAdapter(se, con);
        DataTable dtse = new DataTable();
        adpse.Fill(dtse);

        string sele = "select * from tbl_booking b inner join tbl_user u on b.user_id= u.user_id inner join tbl_finalreport fr on fr.book_id=b.book_id where fr.book_id='" + txtbid.Text + "' and fr.test_id='" + ddltest.SelectedValue + "'";
        SqlDataAdapter adpsele = new SqlDataAdapter(sele, con);
        DataTable dtsele = new DataTable();
        adpsele.Fill(dtsele);

        if (dtsele.Rows.Count > 0)
        {
            obj.FillGridView(sele, GridView1);
        }
        if (dt.Rows.Count > 0)
        {
            Response.Write("Your report will ready within 24 hrs.");
        }
        if (dtse.Rows.Count > 0)
        {
            Response.Write("You are not payed yet.After only your report will ready");
        }

        //string sele = "select * from tbl_booking b inner join tbl_user u on b.user_id= u.user_id inner join tbl_finalreport fr on fr.book_id=b.book_id where fr.book_id='"+ txtbid.Text+"' and fr.test_id='"+ ddltest.SelectedValue+"'";

        //obj.FillGridView(sele, GridView1);
    }
    protected void ddltest_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void txtbid_TextChanged(object sender, EventArgs e)
    {
        fillContent();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dwnl")
        {
            string name = e.CommandArgument.ToString();
            Response.AppendHeader("Content-disposition", "attachment;results=" + name + "");
            Response.TransmitFile(Server.MapPath("../Laboratory/sended reports/" + name));
            Response.End();

        }
    }
}