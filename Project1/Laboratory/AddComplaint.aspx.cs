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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillComplaint();
        }
    }
    protected void fillComplaint()
    {
        string selQry = "select * from tbl_complainttype";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddlcmplnttype.DataSource = dt;
        ddlcmplnttype.DataTextField = "complainttype_name";
        ddlcmplnttype.DataValueField = "complainttype_id";
        ddlcmplnttype.DataBind();
        ddlcmplnttype.Items.Insert(0, "--select--");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_complaint (complainttype_id,complaint_title,complaint_content,complaint_senddate,user_id,lab_id,jobseekerj_id,complaint_status) values ('" + ddlcmplnttype.SelectedValue + "', '" + txtcmptitle.Text + "','" + txtcmpcontent.Text + "', '" + DateTime.Now.ToShortDateString() + "','0','" + Session["uid"] + "','0','0')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        txtcmptitle.Text = "";
        txtcmpcontent.Text = "";
        //txtdate.Text = "";
        
        ddlcmplnttype.ClearSelection();
        Response.Write("Your Complained submitted successfully");
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcmptitle.Text = "";
        txtcmpcontent.Text = "";
        //txtdate.Text = "";
        ddlcmplnttype.SelectedValue = "";
    }
}