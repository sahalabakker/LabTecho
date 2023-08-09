using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class JobSeeker_Default : System.Web.UI.Page
{
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
        //string cvName = Path.GetFileName(filecv.PostedFile.FileName.ToString());
        //filecv.SaveAs(Server.MapPath("../Guest/proof/cv/" + cvName));
        string selQry = "select * from tbl_jsregistration where jobseekerj_id = '" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtfname.Text = dt.Rows[0]["js_fname"].ToString();
        txtlname.Text = dt.Rows[0]["js_lname"].ToString();
        txtemail.Text = dt.Rows[0]["js_email"].ToString();
        txtqualif.Text = dt.Rows[0]["js_qualif"].ToString();
        txtcont.Text = dt.Rows[0]["js_phone"].ToString();
        txtaddress.Text = dt.Rows[0]["js_address"].ToString();
        txtexp.Text = dt.Rows[0]["js_exp"].ToString();
        //filecv.file = dt.Rows[0]["js_cv"].ToString();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_jsregistration set js_fname= '" + txtfname.Text + "', js_email = '" + txtemail.Text + "',js_lname='"+ txtlname.Text+"',js_phone='"+ txtcont.Text+"',js_address='"+txtaddress.Text+"',js_qualif='"+ txtqualif.Text+"',js_exp='"+ txtexp.Text+"' where jobseekerj_id = '" + Session["uid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Edit successfully') </script>");
    }
}