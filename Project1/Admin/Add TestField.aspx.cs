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
            fillTest();
            fillGrid();
        }
    }
    protected void fillTest()
    {
        string selQry = "select * from tbl_test"; 
        obj.FillDrop(ddltestname, "test_name", "test_id", "tbl_test");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_tstfield set testfield_name= '" + txttstfield.Text + "' ,max_value='"+txtmax.Text+"',min_value='"+txtmin.Text+"' where tstfield_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            flag = 0;
        }
        else
        {
            string insQry = "insert into tbl_tstfield(test_id,testfield_name,max_value,min_value) values ('" + ddltestname.SelectedValue + "','" + txttstfield.Text + "','"+txtmax.Text+"','"+txtmin.Text+"')";
            //SqlCommand cmd = new SqlCommand(insQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insQry);
        }

        txttstfield.Text = "";
        txtmax.Text = "";
        txtmin.Text = "";
        ddltestname.ClearSelection();
        fillGrid();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_tstfield s inner join tbl_test c on s.test_id=c.test_id"; 
        obj.FillGridView(selQry, GridView1);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_tstfield where tstfield_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_tstfield s inner join tbl_test c on s.test_id = c.test_id where s.tstfield_id = '" + idNo + "' ";
            //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);
            DataTable dt = new DataTable();
            dt = obj.GetDataTable(selQry);
            txttstfield.Text = dt.Rows[0]["testfield_name"].ToString();
            ddltestname.SelectedValue = dt.Rows[0]["test_id"].ToString();
            txtmax.Text = dt.Rows[0]["max_value"].ToString();
            txtmin.Text = dt.Rows[0]["min_value"].ToString();
            flag = 1;
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txttstfield.Text = "";
        ddltestname.ClearSelection();
    }
}