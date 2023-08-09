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
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    int num, idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open(); 
            string sel = "select * from tbl_booking where book_status='approved appoinment request' and sample_status='Sample collected successfully' and payment_status='not payed' and user_id='" + Session["uid"] + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                fillDisplay();
            }
            else
            {
                Label4.Text = "No new notifications!!";
                //Response.Write("No new notifications!!");
            }
        }
    }
    protected void fillDisplay()
    {
        string sel = "select * from tbl_booking where book_status='approved appoinment request' and sample_status='Sample collected successfully' and payment_status='not payed' and user_id='" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
            Session["amount"] = dt.Rows[0]["tot_amount"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "pay")
        {
            
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            Session["bookid"] = idNo;
            Response.Redirect("./Payment/First.aspx");
        }
    }
}