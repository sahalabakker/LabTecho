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
            string upQry = "update tbl_districtt set district_name= '" + txtcategory.Text + "' where district_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            txtcategory.Text = "";
            fillGrid();
            flag = 0;
        }
        else
        {
            String insquery = "insert into tbl_districtt (district_name) values('" + txtcategory.Text + "')";
            //SqlCommand cmd = new SqlCommand(insquery, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insquery);
            txtcategory.Text = "";
            fillGrid();
        }

    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_districtt";
        //SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adap.Fill(dt);
        
        //grddistrict.DataSource = dt;
        //grddistrict.DataBind();
        obj.FillGridView(setQuery, grddistrict);


    }

    protected void grddetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
          idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_districtt where district_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_districtt where district_id = '" + idNo + "'";
            //SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txtcategory.Text = dt.Rows[0]["district_name"].ToString();
            flag = 1;


        }
    }
}