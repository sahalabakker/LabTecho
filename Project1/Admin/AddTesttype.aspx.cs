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
    CommonClass obj = new CommonClass();
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_testtype set testtype_name= '" + txttesttype.Text + "' where testtype_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            txttesttype.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_testtype (testtype_name) values('" + txttesttype.Text + "')";
            //SqlCommand cmd = new SqlCommand(insquery, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insquery);
            txttesttype.Text = "";
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_testtype";
        //SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adap.Fill(dt);
        //grdcategory.DataSource = dt;
        //grdcategory.DataBind();
        obj.FillGridView(setQuery, GridView1);


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_testtype where testtype_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_testtype where testtype_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txttesttype.Text = dt.Rows[0]["testtype_name"].ToString();
            flag = 1;
        }
    }
}