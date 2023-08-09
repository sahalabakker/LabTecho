using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    static int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "details")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bookid"] = idNo;
            Response.Redirect("./Test Details.aspx");
        }
        if (e.CommandName == "appr")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string upQryy = "update tbl_booking set book_status='approved appoinment request' where book_id = '" + idNo + "'";
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
   

    protected void btnappr_Click(object sender, EventArgs e)
    {
        Response.Redirect("Approved appoinments.aspx");
    }
    protected void btnnewreq_Click1(object sender, EventArgs e)
    {
        fillGrid();
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_booking b inner join tbl_testhead th on th.testhead_id=b.testhead_id inner join tbl_user u on b.user_id=u.user_id inner join tbl_place p on p.place_id=u.place_id where b.book_status='Appoinment awaiting approval' and th.lab_id='" + Session["lid"] + "'";
        obj.FillGridView(setQuery, GridView1);
    }
}