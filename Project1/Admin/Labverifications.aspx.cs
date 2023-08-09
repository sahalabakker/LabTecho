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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo;

    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void btnnewlab_Click(object sender, EventArgs e)
    {
        
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_labregistration where lab_status='0'";
        SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //grdcategory.DataSource = dt;
            //grdcategory.DataBind();
            obj.FillGridView(setQuery, GridView3);
        }
        else
        {
            Label1.Text = "No new records!...";
        }

        


    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "acce")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string upQry = "update tbl_labregistration set lab_status='1' where lab_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            fillGrid();
        } 
        
        if (e.CommandName == "rej")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string upQryy = "update tbl_labregistration set lab_status='2' where lab_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            //DataTable dt = obj.GetDataTable(upQryy);
            //txtcategory.Text = dt.Rows[0]["category_name"].ToString();
            //flag = 1;
            obj.ExecuteCommands(upQryy);
            fillGrid();
        }
    }
    protected void btnaccplab_Click(object sender, EventArgs e)
    {
        Response.Redirect("./AcceptedLabList.aspx");
    }
    protected void btnrejlab_Click(object sender, EventArgs e)
    {
        Response.Redirect("./RejectedLabList.aspx");
    }
    
}