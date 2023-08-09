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
        //string selQry = "select * from tbl_category";
        //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //DataTable dt = obj.GetDataTable(selQry);
        //ddlcategory.DataSource = dt;
        //ddlcategory.DataTextField = "category_name";
        //ddlcategory.DataValueField = "category_id";

        //ddlcategory.DataBind();
        //ddlcategory.Items.Insert(0, "--select--");
        obj.FillDrop(ddlcategory, "category_name", "category_id", "tbl_category");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_subcategory set category_id= '" + ddlcategory.SelectedValue + "',subcategory_name= '" + Txtsubcategory.Text + "' where subcategory_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            flag = 0;
        }
        else
        {
            string insQry = "insert into tbl_subcategory(category_id,subcategory_name)values('" + ddlcategory.SelectedValue + "','" + Txtsubcategory.Text + "')";
            //SqlCommand cmd = new SqlCommand(insQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insQry);
        }

            Txtsubcategory.Text = "";
            ddlcategory.ClearSelection();
            fillGrid();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_subcategory s inner join tbl_category c on s.category_id=c.category_id";
        //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //grdsubcategory.DataSource = dt;
        //grdsubcategory.DataBind();
        obj.FillGridView(selQry, grdsubcategory);
    }
    protected void grdsubcategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_subcategory where subcategory_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_subcategory s inner join tbl_category c on s.category_id = c.category_id where s.subcategory_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            Txtsubcategory.Text = dt.Rows[0]["subcategory_name"].ToString();
            ddlcategory.SelectedValue = dt.Rows[0]["category_id"].ToString();
            flag = 1;
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Txtsubcategory.Text = "";

    }
}