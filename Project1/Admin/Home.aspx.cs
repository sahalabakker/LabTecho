using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sel = "select * from tbl_labregistration";
            SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            int count = dt.Rows.Count;
            Label1.Text = count.ToString();
        }

        if (!IsPostBack)
        {
            string sel = "select * from tbl_user";
            SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            int count = dt.Rows.Count;
            Label3.Text = count.ToString();
        }

        if (!IsPostBack)
        {
            string sel = "select * from tbl_jsregistration";
            SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            int count = dt.Rows.Count;
            Label4.Text = count.ToString();
        }
    }
}