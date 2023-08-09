using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillGrid();
            fillCategory();
            fillJobType();
            fillShedule();
        }
        //fillGrid();
    }

    protected void fillJobType()
    {
        string selQry = "select * from tbl_jobtype";
        obj.FillDrop(DropDownList1, "jobtype_name", "jobtype_id", "tbl_jobtype");
    }

    protected void fillShedule()
    {
        string selQry = "select * from tbl_schedule";
        obj.FillDrop(DropDownList2, "schedule_time", "schedule_id", "tbl_schedule");
    }
    protected void fillCategory()
    {
        obj.FillDrop(ddljtype, "jobtype", "jobseeker_id", "tbl_jobseekertype");
    }
    protected void fillGrid()
    {
        string selQ = "select * from tbl_jobvaccency where job_id='" + Request.QueryString["id"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQ, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtjname.Text = dt.Rows[0]["job_name"].ToString();
        txtnvacc.Text = dt.Rows[0]["job_nvaccency"].ToString();
        txtsal.Text = dt.Rows[0]["job_salary"].ToString();
        txtdiscrip.Text = dt.Rows[0]["job_discrip"].ToString();
        txtqualif.Text = dt.Rows[0]["qualification"].ToString();
        txtexp.Text = dt.Rows[0]["experience"].ToString();
        txtdead.Text = dt.Rows[0]["job_ldate"].ToString();
        txtsdate.Text = dt.Rows[0]["job_sdate"].ToString();
        //ddljtype.Text=dt.Rows[0][""]
        int jtype =Convert.ToInt32( dt.Rows[0]["jobseeker_id"].ToString());
        string sel = "select * from tbl_jobseekertype where jobseeker_id='" + jtype + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(sel, con);
        DataTable dt1 = new DataTable();
        adp1.Fill(dt1);
        //ddljtype.value = dt1.Rows[0]["jobtype"].ToString();
        //ddljtype.SelectedValue = dt1.Rows[0]["jobtype"].ToString();

        int jobtype = Convert.ToInt32(dt.Rows[0]["job_type"].ToString());
        string selQu = "select * from tbl_jobtype where jobtype_id='" + jobtype + "'";
        SqlDataAdapter adp4 = new SqlDataAdapter(selQu, con);
        DataTable dt4 = new DataTable();
        adp4.Fill(dt4);
        //DropDownList1.Text = dt4.Rows[0]["jobtype_name"].ToString();

        int scheduleid = Convert.ToInt32(dt.Rows[0]["schedule"].ToString());
        string s = "select * from tbl_schedule where schedule_id='" + scheduleid + "'";
        SqlDataAdapter adp5 = new SqlDataAdapter(s, con);
        DataTable dt5 = new DataTable();
        adp5.Fill(dt5);
        //DropDownList2.Text = dt5.Rows[0]["schedule_time"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string up = "update tbl_jobvaccency set job_name='" + txtjname.Text + "',job_nvaccency='" + txtnvacc.Text + "',job_salary='" + txtsal.Text + "',job_discrip='" + txtdiscrip.Text + "',qualification='" + txtqualif.Text + "',experience='" + txtexp.Text + "',job_sdate='" + txtsdate.Text + "',job_ldate='" + txtdead.Text + "' where job_id='" + Request.QueryString["id"] + "'";
        obj.ExecuteCommands(up);
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        txtqualif.Text = "";
        txtexp.Text = "";
        txtsdate.Text = "";
        txtdead.Text = "";
        txtdiscrip.Text = "";
        txtjname.Text = "";
        txtnvacc.Text = "";
        txtsal.Text = "";

        Response.Write("Job Details Added Successfully");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        txtqualif.Text = "";
        txtexp.Text = "";
        txtsdate.Text = "";
        txtdead.Text = "";
        txtdiscrip.Text = "";
        txtjname.Text = "";
        txtnvacc.Text = "";
        txtsal.Text = "";
    }
}