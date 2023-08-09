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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_jobtype set jobtype_name= '" + txtjtype.Text + "' where jobtype_id= '" + idNo + "'";
            
            obj.ExecuteCommands(upQry);
            txtjtype.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_jobtype (jobtype_name) values('" + txtjtype.Text + "')";
            obj.ExecuteCommands(insquery);
            txtjtype.Text = "";
            fillGrid();
        }
    }

    protected void fillGrid()
    {
        String setQuery = "select * from tbl_jobtype";
        obj.FillGridView(setQuery, GridView1);


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_jobtype where jobtype_id = '" + idNo + "'";
            obj.ExecuteCommands(delQry);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_jobtype where jobtype_id = '" + idNo + "'";
            DataTable dt = obj.GetDataTable(selQry);
            txtjtype.Text = dt.Rows[0]["jobtype_name"].ToString();
            flag = 1;


        }
    }
}