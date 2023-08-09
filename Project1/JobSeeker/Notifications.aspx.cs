using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class JobSeeker_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    public int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


        if (!IsPostBack)
        {
            fillGrid();
            Panel2.Visible = false;
        }
    }
    protected void fillGrid()
    {
        string sel = "select top 5 * from tbl_jobvaccency j inner join tbl_labregistration l on l.lab_id=j.lab_id order by j.job_id desc";
        SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "vm")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            //Session["idNo"] = idNo;
            Panel2.Visible = true;
            string s = "select * from tbl_jobvaccency where job_id='" + idNo + "'";
            SqlDataAdapter adps = new SqlDataAdapter(s, con);
            DataTable dts = new DataTable();
            adps.Fill(dts);
            Label10.Text = dts.Rows[0]["job_name"].ToString();
            Session["idNo1"] = dts.Rows[0]["job_id"].ToString();

            int labid = Convert.ToInt32(dts.Rows[0]["lab_id"].ToString());
            Session["labid"] = labid;
            string se = "select * from tbl_labregistration where lab_id='" + labid + "'";
            SqlDataAdapter adpse = new SqlDataAdapter(se, con);
            DataTable dtse = new DataTable();
            adpse.Fill(dtse);
            Label11.Text = dtse.Rows[0]["lab_name"].ToString();
            Label22.Text = dtse.Rows[0]["address"].ToString();
            Label23.Text = dtse.Rows[0]["lab_email"].ToString();
            Label24.Text = dtse.Rows[0]["lab_phone"].ToString();

            int placeid = Convert.ToInt32(dtse.Rows[0]["place_id"].ToString());
            string sel = "select * from tbl_place where place_id='" + placeid + "'";
            SqlDataAdapter adpsel = new SqlDataAdapter(sel, con);
            DataTable dtsel = new DataTable();
            adpsel.Fill(dtsel);
            Label12.Text = dtsel.Rows[0]["place_name"].ToString();
            int disid = Convert.ToInt32(dtsel.Rows[0]["district_id"].ToString());
            string sell = "select * from tbl_districtt where district_id='" + disid + "'";
            SqlDataAdapter adpsell = new SqlDataAdapter(sell, con);
            DataTable dtsell = new DataTable();
            adpsell.Fill(dtsell);
            Label13.Text = dtsell.Rows[0]["district_name"].ToString();
            Label14.Text = dts.Rows[0]["job_salary"].ToString();

            int jobtype = Convert.ToInt32(dts.Rows[0]["job_type"].ToString());
            string selQu = "select * from tbl_jobtype where jobtype_id='" + jobtype + "'";
            SqlDataAdapter adpselQu = new SqlDataAdapter(selQu, con);
            DataTable dtselQu = new DataTable();
            adpselQu.Fill(dtselQu);
            Label15.Text = dtselQu.Rows[0]["jobtype_name"].ToString();

            Label16.Text = dts.Rows[0]["qualification"].ToString();
            Label17.Text = dts.Rows[0]["experience"].ToString();

            Label19.Text = dts.Rows[0]["job_ldate"].ToString();
            Label20.Text = dts.Rows[0]["job_sdate"].ToString();

            int schedule = Convert.ToInt32(dts.Rows[0]["schedule"].ToString());
            string selQue = "select * from tbl_schedule where schedule_id='" + schedule + "'";
            SqlDataAdapter adpselQue = new SqlDataAdapter(selQue, con);
            DataTable dtselQue = new DataTable();
            adpselQue.Fill(dtselQue);
            Label21.Text = dtselQue.Rows[0]["schedule_time"].ToString();
        }
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        string insert = "select * from tbl_appliedjob_status where job_id='" + Session["idNo1"] + "' and jobseekerj_id='" + Session["uid"] + "' and status='1'";
        SqlDataAdapter adpinsert = new SqlDataAdapter(insert, con);
        DataTable dtinsert = new DataTable();
        adpinsert.Fill(dtinsert);
        if (dtinsert.Rows.Count > 0)
        {
            Response.Write("You Already Applied for this post");
        }
        else
        {
            Session["idNo"] = idNo;
            Response.Redirect("Application Page.aspx");
        }
    }
    protected void btnseeall_Click(object sender, EventArgs e)
    {
        Response.Redirect("See All Job.aspx");
    }
}