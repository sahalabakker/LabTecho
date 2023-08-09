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
    //SqlConnection con = new SqlConnection("Data Source=OMA\SQLEXPRESS;Initial Catalog="main project";Integrated Security=True");
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
            string upQry = "update tbl_schedule set schedule_time= '" + txtshedule.Text + "' where schedule_id= '" + idNo + "'";

            obj.ExecuteCommands(upQry);
            txtshedule.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_schedule (schedule_time) values('" + txtshedule.Text + "')";
            obj.ExecuteCommands(insquery);
            txtshedule.Text = "";
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_schedule";
        obj.FillGridView(setQuery, GridView1);


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_schedule where schedule_id = '" + idNo + "'";
            obj.ExecuteCommands(delQry);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_schedule where schedule_id = '" + idNo + "'";
            DataTable dt = obj.GetDataTable(selQry);
            txtshedule.Text = dt.Rows[0]["schedule_time"].ToString();
            flag = 1;


        }
    }
}