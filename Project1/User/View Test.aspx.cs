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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    CommonClass obj = new CommonClass();
    static int idNo;
    //string selQry2;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_test t inner join tbl_testtype tt on t.testtype_id=tt.testtype_id where t.lab_id='"+ Session["labid"]+"' ";
        obj.FillGridView(setQuery, GridView1); 
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="book")
        {
           
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            //Session["testid"] = idNo;
            //Response.Redirect("./BookNow.aspx");
        }
    }
    protected void btnbooknow_Click(object sender, EventArgs e)
    {
        string strname = string.Empty;
        string str = string.Empty;

        string insQry1 = "insert into tbl_testhead (lab_id,testhead_date,user_id) values ('" + Session["labid"] + "','" +DateTime.Now + "','" + Session["uid"] + "') ";
        SqlCommand cmd1 = new SqlCommand(insQry1, con);
        cmd1.ExecuteNonQuery();


        SqlCommand cmd2 = new SqlCommand("select max(testhead_id) from tbl_testhead", con);
     
        string a = Convert.ToString(cmd2.ExecuteScalar());
        Session["testhead"] = a.ToString();
       

        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox ch = row.Cells[0].FindControl("ch") as CheckBox;

            if (ch.Checked == true)
            {
                HiddenField hf = row.FindControl("HiddenField1") as HiddenField;
                str = hf.Value.ToString();
                Session["testid"] = str;
                Session["userid"] = Session["uid"];

                string insQry = "insert into tbl_testdetails (testhead_id,test_id,testreport_status) values ('" + Session["testhead"] + "','" + str + "','0') ";
                SqlCommand cmd = new SqlCommand(insQry, con);
                cmd.ExecuteNonQuery();
            }
        }
       
        Response.Redirect("./BookNow1.aspx");
    }    
}
