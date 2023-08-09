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
            fillCategory();
            fillGrid();
        }
    }
    protected void fillCategory()
    {
        string selQry = "select * from tbl_districtt";
        //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //DataTable dt = obj.GetDataTable(selQry);
        //ddldistrict.DataSource = dt;
        //ddldistrict.DataTextField = "district_name";
        //ddldistrict.DataValueField = "District_id";
        //ddldistrict.DataBind();
        //ddldistrict.Items.Insert(0, "--select--");
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_districtt");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_place set district_id= '" + ddldistrict.SelectedValue + "',place_name= '" + txtplace.Text + "' where place_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            flag = 0;
        }
        else
        {
            string insQry = "insert into tbl_place(district_id,place_name) values ('" + ddldistrict.SelectedValue + "','" + txtplace.Text + "')";
            //SqlCommand cmd = new SqlCommand(insQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insQry);
        }

        txtplace.Text = "";
        ddldistrict.ClearSelection();
        fillGrid();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_place s inner join tbl_districtt c on s.district_id=c.district_id";
        //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //grdplace.DataSource = dt;
        //grdplace.DataBind();
        obj.FillGridView(selQry, grdplace);
    }
    protected void grdplace_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_place where place_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_place s inner join tbl_districtt c on s.district_id = c.district_id where s.place_id = '" + idNo + "' ";
            //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);
            DataTable dt = new DataTable();
            dt = obj.GetDataTable( selQry );
            txtplace.Text = dt.Rows[0]["place_name"].ToString();
            ddldistrict.SelectedValue = dt.Rows[0]["district_id"].ToString();
            flag = 1;
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtplace.Text = "";
        ddldistrict.ClearSelection();
    }
}