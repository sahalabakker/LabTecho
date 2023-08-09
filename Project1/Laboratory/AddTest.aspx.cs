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
    CommonClass obj = new CommonClass();
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
            fillTesttype();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_test set testtype_id='"+ ddlttype.SelectedValue +"',test_amount='"+ txtamount.Text+"',test_name='"+txttname.Text+"',test_ctime='"+txtctime.Text+"',lab_id='"+ Session["lid"]+"' where test_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            txttname.Text = "";
            txtamount.Text = "";
            txtctime.Text = "";
            //ddlttype.SelectedValue = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_test (testtype_id,test_amount,test_name,test_ctime,lab_id) values('" + ddlttype.SelectedValue + "','"+ txtamount.Text+"','"+ txttname.Text+"','"+txtctime.Text+"','"+ Session["lid"]+ "')";
            //SqlCommand cmd = new SqlCommand(insquery, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insquery);
            txttname.Text = "";
            txtamount.Text = "";
            txtctime.Text = "";
            //ddlttype.SelectedValue = "";
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_test t inner join tbl_testtype tt on t.testtype_id=tt.testtype_id where lab_id='"+ Session["lid"]+"'";
        //SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adap.Fill(dt);
        //grdcategory.DataSource = dt;
        //grdcategory.DataBind();
        obj.FillGridView(setQuery, GridView1);


    }
    protected void fillTesttype()
    {
         obj.FillDrop(ddlttype, "testtype_name", "testtype_id", "tbl_testtype");
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_test where test_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_test where test_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txttname.Text = dt.Rows[0]["test_name"].ToString();
            ddlttype.SelectedValue = dt.Rows[0]["testtype_id"].ToString();
            txtamount.Text = dt.Rows[0]["test_amount"].ToString(); 
            txtctime.Text = dt.Rows[0]["test_ctime"].ToString();
            flag = 1;
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txttname.Text = "";
        txtamount.Text = "";
        txtctime.Text = "";
        ddlttype.SelectedValue = "";
    }
}