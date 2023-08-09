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
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillDisplay();
        }
    }
    protected void fillDisplay()
    {
        string sel = "select * from tbl_labregistration where lab_id='" + Session["labid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel,con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Label1.Text = dt.Rows[0]["lab_name"].ToString();
        Label2.Text = dt.Rows[0]["address"].ToString();
        Label3.Text = dt.Rows[0]["lab_phone"].ToString();
        Label4.Text = dt.Rows[0]["lab_email"].ToString();
        Label5.Text = dt.Rows[0]["opening_time"].ToString();
    }
    protected void btnbook_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Appoinments.aspx");
    }
    protected void btnbook_Click1(object sender, EventArgs e)
    {
        Response.Redirect("./Appoinments.aspx");
    }
    protected void btndwnld_Click(object sender, EventArgs e)
    {
        Response.Redirect("View report.aspx");
    }
}