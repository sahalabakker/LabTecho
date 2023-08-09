using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class JobSeeker_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
            fillJobtype();
            fillSchedule();
            fillDisplay();
        }
    }
    protected void fillDistrict()
    {
        string selQry = "select * from tbl_districtt";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddldistrict.DataSource = dt;
        ddldistrict.DataTextField = "district_name";
        ddldistrict.DataValueField = "district_id";
        ddldistrict.DataBind();
        //ddldistrict.Items.Insert(0, "--select--");
    }
    protected void fillJobtype()
    {
        string selQry = "select * from tbl_jobseekertype";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddljbtype.DataSource = dt;
        ddljbtype.DataTextField = "jobtype";
        ddljbtype.DataValueField = "jobseeker_id";
        ddljbtype.DataBind();
        ddljbtype.Items.Insert(0, "--select--");
    }
    protected void fillSchedule()
    {
        string selQry = "select * from tbl_schedule";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "schedule_time";
        DropDownList1.DataValueField = "schedule_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "--select--");
    }
    protected void fillDisplay()
    {
        string s = "select * from tbl_jsregistration where jobseekerj_id='" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(s, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtfname.Text = dt.Rows[0]["js_fname"].ToString();
        txtlname.Text = dt.Rows[0]["js_lname"].ToString();
        txtemail.Text = dt.Rows[0]["js_email"].ToString();
        txtcont.Text = dt.Rows[0]["js_phone"].ToString();
        txtaddress.Text = dt.Rows[0]["js_address"].ToString();
        txtdob.Text = dt.Rows[0]["js_dob"].ToString();
        //ddldistrict.DataTextField = dt.Rows[0]["js_phone"].ToString();
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_place where district_id='" + ddldistrict.SelectedValue + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddlplace.DataSource = dt;
        ddlplace.DataTextField = "place_name";
        ddlplace.DataValueField = "place_id";
        ddlplace.DataBind();
        ddldistrict.Items.Insert(0, "");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string cvName = Path.GetFileName(filecv.PostedFile.FileName.ToString());
        filecv.SaveAs(Server.MapPath("./Resume/" + cvName));

        string ins = "insert into tbl_application (appl_qualification,appl_experience,jobseekerj_id,job_id,status,resume,lab_id,applpref_jobtype,applpref_schedule,dwnl_status) values ('" + txtqual.Text + "','" + txtexp.Text + "','" + Session["uid"] + "','" + Session["idNo1"] + "','0','"+ cvName+"','"+ Session["labid"]+"','"+ ddljbtype.SelectedValue+"','"+ DropDownList1.SelectedValue+"','0')";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcont.Text = "";
        txtdob.Text = "";
        txtaddress.Text = "";
        txtexp.Text = "";
        ddldistrict.ClearSelection();
        ddlplace.ClearSelection();
        ddljbtype.ClearSelection();
        DropDownList1.ClearSelection();

        string up = "insert into tbl_appliedjob_status (job_id,jobseekerj_id,status) values ('"+ Session["idNo1"]+"','"+ Session["uid"]+"','1')";
        SqlCommand cmd1 = new SqlCommand(up, con);
        cmd1.ExecuteNonQuery();

        Response.Write("Your Application Submitted Successfully.You will have an interview call if you shortlisted.");
    }
}