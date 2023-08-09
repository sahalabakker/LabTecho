using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;


public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        string selQry = "select lab_password from tbl_labregistration where lab_id='" + Session["lid"] + "'";
        DataTable dt = new DataTable();
        dt = obj.GetDataTable(selQry);

        if (dt.Rows[0]["lab_password"].ToString() == txtold.Text)
        {
            if (txtnew.Text == txtcon.Text)
            {
                string upQry = "update tbl_labregistration set lab_password='" + txtnew.Text + "' where lab_id='" + Session["lid"] + "'";
                obj.ExecuteCommands(upQry);
                Response.Write("<script>alert('password changed successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('not match')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('invalid')</script>");
        }
    }
}