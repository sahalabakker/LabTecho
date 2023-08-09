using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
           
        }
    }
    protected void fillDistrict()
    {
        string selQry = "select * from tbl_districtt";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddlseldi.DataSource = dt;
        ddlseldi.DataTextField = "district_name";
        ddlseldi.DataValueField = "district_id";
        ddlseldi.DataBind();
        ddlseldi.Items.Insert(0, "--select--");

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        fillGrid();
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_labregistration l inner join tbl_place p on l.place_id=p.place_id where p.district_id='"+ ddlseldi.SelectedValue+ "' and l.lab_status='1'";
        //obj.FillGridView(setQuery, GridView1);
        //String setQuery1 = "select * from tbl_labregistration";
        //obj.FillGridView(setQuery1, GridView1);
        //DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(setQuery, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        GridView1.DataSource = dt;
        Session["labid"] = dt.Rows[0]["lab_id"].ToString();
        GridView1.DataBind();

        


    }

    
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="select")
        {
        idNo = Convert.ToInt32(e.CommandArgument.ToString());
        Session["labid"] = idNo; 
            Response.Redirect("./Laboratory Details.aspx");
        }
    }
}