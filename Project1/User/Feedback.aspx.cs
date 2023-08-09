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
        if (!IsPostBack)
        {
            fillDisplay();
        }
    }
    protected void fillDisplay()
    {
        string sel = "select * from tbl_user where user_id='" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtname.Text = dt.Rows[0]["first_name"].ToString();
        txtemail.Text = dt.Rows[0]["user_email"].ToString();

    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_feedback (book_id,date,first_name,user_email,user_phone,lab_id,feedback) values ('" + txtbook.Text + "','" + txtdate.Text + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + Session["labid"] + "','" + txtfeedback.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        Response.Write("Thank you for your valuable feedback!");
        Response.Redirect("Appoinments.aspx");
    }
}