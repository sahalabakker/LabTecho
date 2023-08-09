using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    CommonClass obj = new CommonClass(); 
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            fillTest();
            fillGrid();
            //fillTest1();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_particulars set particular_name= '" + txtparticular.Text + "',test_id='"+ ddltest.SelectedValue +"',normal_value='"+ txtnormal.Text+"',unit='"+txtunit.Text+"' where particular_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            txtparticular.Text = ""; 
            txtnormal.Text = ""; 
            txtunit.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_particulars (particular_name,test_id,normal_value,unit) values('" + txtparticular.Text + "','"+ddltest.SelectedValue+"','"+txtnormal.Text+"','"+txtunit.Text+"')";
            //SqlCommand cmd = new SqlCommand(insquery, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insquery);
            txtparticular.Text = ""; 
            txtnormal.Text = ""; 
            txtunit.Text = "";
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_particulars p inner join tbl_test t on t.test_id=p.test_id where t.lab_id='"+ Session["lid"]+"'"; 
        obj.FillGridView(setQuery, GridView2);


    }
    protected void fillTest()
    {
        String setQuery = "select * from tbl_test where lab_id='" + Session["lid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        DataTable dt = obj.GetDataTable(setQuery);
        ddltest.DataSource = dt;
        ddltest.DataTextField = "test_name";
        ddltest.DataValueField = "test_id";
        ddltest.DataBind();
        ddltest.Items.Insert(0, "--select--");
        //obj.FillDrop(ddltest, "test_name", "test_id", "tbl_test");


    }

    

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtparticular.Text = "";
        //txtparticular.Text = "";
            txtnormal.Text = "";
            txtunit.Text = "";
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_particulars where particular_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_particulars where particular_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txtparticular.Text = dt.Rows[0]["particular_name"].ToString(); 
            txtnormal.Text = dt.Rows[0]["normal_value"].ToString();
            txtunit.Text = dt.Rows[0]["unit"].ToString(); 
            flag = 1;
        }
    }
}