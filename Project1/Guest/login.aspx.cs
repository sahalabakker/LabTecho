using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Basic_Programs_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string insQry = "select * from tbl_user where user_email = '" + txtemail.Text + "' and user_password = '" + txtpassword.Text + "' and user_status='0'";
        SqlDataAdapter adppatient = new SqlDataAdapter(insQry, con);
        DataTable dt = new DataTable();
        adppatient.Fill(dt);

        string insQrylab = "select * from tbl_labregistration where lab_email = '" + txtemail.Text + "' and lab_password = '" + txtpassword.Text + "' and lab_status='1'";
        SqlDataAdapter adplab = new SqlDataAdapter(insQrylab, con);
        DataTable dtlab = new DataTable();
        adplab.Fill(dtlab);

        string insQryjbs = "select * from tbl_jsregistration where js_email = '" + txtemail.Text + "' and js_password = '" + txtpassword.Text + "' and js_status='1' and jobseeker_id='7'";
        SqlDataAdapter adpjbs = new SqlDataAdapter(insQryjbs, con);
        DataTable dtjbs = new DataTable();
        adpjbs.Fill(dtjbs); 
        
        string insQryjbs1 = "select * from tbl_jsregistration where js_email = '" + txtemail.Text + "' and js_password = '" + txtpassword.Text + "' and js_status='1' and jobseeker_id='6'";
        SqlDataAdapter adpjbs1 = new SqlDataAdapter(insQryjbs1, con);
        DataTable dtjbs1 = new DataTable();
        adpjbs1.Fill(dtjbs1);

        string insQryadmin = "select * from tbl_adminlogin where email_id = '" + txtemail.Text + "' and password = '" + txtpassword.Text + "'";
        SqlDataAdapter adpadmin = new SqlDataAdapter(insQryadmin, con);
        DataTable dtadmin = new DataTable();
        adpadmin.Fill(dtadmin);

        if (dt.Rows.Count>0)
        {

            Session["uid"] = dt.Rows[0]["user_id"].ToString();
            Session["uname"] = dt.Rows[0]["first_name"].ToString();
            Response.Redirect("../User/Home.aspx");
        
        }

        else if (dtlab.Rows.Count > 0)
        {
            Session["lid"] = dtlab.Rows[0]["lab_id"].ToString();
            Session["uname"] = dtlab.Rows[0]["lab_name"].ToString();
            Response.Redirect("../Laboratory/Home.aspx");
        }

        else if (dtjbs.Rows.Count > 0)
        {
            Session["uid"] = dtjbs.Rows[0]["jobseekerj_id"].ToString();
            Session["uname"] = dtjbs.Rows[0]["js_fname"].ToString();
            Response.Redirect("../JobSeeker/Homepage.aspx");
        }
        
        
        else if (dtjbs1.Rows.Count > 0)
        {
            Session["uid"] = dtjbs1.Rows[0]["jobseekerj_id"].ToString();
            Session["uname"] = dtjbs1.Rows[0]["js_fname"].ToString();
            Response.Redirect("../Doctor/Homepage.aspx");
        }

        else if (dtadmin.Rows.Count > 0)
        {
            //Session["uid"] = dt.Rows[0]["jobseekerj_id"].ToString();
            //Session["uname"] = dt.Rows[0]["js_fname"].ToString();
            Response.Redirect("../Admin/Homepage.aspx");
        }
        else
        {
            invalidlabel.Text = "Invalid user";
        }

    }
}