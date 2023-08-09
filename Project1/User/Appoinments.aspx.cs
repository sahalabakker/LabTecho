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
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnappoin_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        fillDisplay();
    }
    protected void fillDisplay()
    {
        string sel = "select * from tbl_user u inner join tbl_place p on p.place_id=u.place_id inner join tbl_districtt d on d.district_id=p.district_id where user_id='" + Session["uid"] + "' ";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        Label1.Text = dt.Rows[0]["first_name"].ToString();
        Label2.Text = dt.Rows[0]["user_email"].ToString();
        Label5.Text = dt.Rows[0]["user_phone"].ToString();
        Label6.Text = dt.Rows[0]["district_name"].ToString();
        string sel1 = "select * from tbl_labregistration where lab_id='" + Session["labid"] + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(sel1, con);
        DataTable dt1 = new DataTable();
        adp1.Fill(dt1);
        Label7.Text = dt1.Rows[0]["lab_name"].ToString();
    }
    protected void btnnxt_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_booking (user_id,pref_date,pref_time,age) values ('" + Session["uid"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + txtage.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("./View Test.aspx");
    }
    protected void btnfeed_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedback.aspx");
    }
}