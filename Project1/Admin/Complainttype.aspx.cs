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
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_complainttype set complainttype_name= '" + txtcmplntname.Text + "' where complainttype_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            txtcmplntname.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_complainttype (complainttype_name) values('" + txtcmplntname.Text + "')";
            //SqlCommand cmd = new SqlCommand(insquery, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insquery);
            txtcmplntname.Text = "";
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_complainttype";
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
            string delQry = "delete from tbl_complainttype where complainttype_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_complainttype where complainttype_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txtcmplntname.Text = dt.Rows[0]["complainttype_name"].ToString();
            flag = 1;
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcmplntname.Text = "";
    }
}