using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_complaint c inner join tbl_complainttype ct on c.complainttype_id=ct.complainttype_id where complaint_id='" + Session["complaint"] + "'";
        SqlDataAdapter adp=new SqlDataAdapter(selQry,con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtcmptype.Text = dt.Rows[0]["complainttype_name"].ToString();
        txtcmptitle.Text = dt.Rows[0]["complaint_title"].ToString();
        txtcmpcontent.Text = dt.Rows[0]["complaint_content"].ToString();
        txtsnddate.Text = dt.Rows[0]["complaint_senddate"].ToString();
        


    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        String insQry = "update tbl_complaint set reply= '" + txtreply.Text + "',complaint_status='1' where complaint_id='" + Session["complaint"] + "'";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
    }
}