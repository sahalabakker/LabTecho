using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    public int applid;
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


        if (!IsPostBack)
        {
            Panel1.Visible = false;
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "dwnl")
        {
            applid = Convert.ToInt32(e.CommandArgument.ToString());
            Panel1.Visible = true;
            fillGrid();
            string s = "select * from tbl_jobvaccency jv inner join tbl_application a on a.job_id=jv.job_id inner join tbl_jsregistration js on js.jobseekerj_id=a.jobseekerj_id inner join tbl_place p on p.place_id=js.place_id inner join tbl_districtt d on d.district_id=p.district_id where a.appl_id='"+applid+"' and a.dwnl_status='0' ";
            SqlDataAdapter adps = new SqlDataAdapter(s, con);
            DataTable dts = new DataTable();
            adps.Fill(dts);
            Label6.Text = dts.Rows[0]["job_name"].ToString();
            Label7.Text = dts.Rows[0]["js_fname"].ToString();
            Label8.Text = dts.Rows[0]["js_lname"].ToString();
            Label9.Text = dts.Rows[0]["js_address"].ToString();
            Label10.Text = dts.Rows[0]["place_name"].ToString();
            Label11.Text = dts.Rows[0]["district_name"].ToString();
            Label12.Text = dts.Rows[0]["js_email"].ToString();
            Label13.Text = dts.Rows[0]["js_phone"].ToString();
            Label14.Text = dts.Rows[0]["js_dob"].ToString();
            Label15.Text = dts.Rows[0]["appl_qualification"].ToString();
            Label19.Text = dts.Rows[0]["appl_experience"].ToString();
            int jobtypeid = Convert.ToInt32(dts.Rows[0]["applpref_jobtype"].ToString());
            int scheduleid = Convert.ToInt32(dts.Rows[0]["applpref_schedule"].ToString());
            string se = "select * from tbl_jobseekertype where jobseeker_id='" + jobtypeid + "'";
            SqlDataAdapter adpse = new SqlDataAdapter(se, con);
            DataTable dtse = new DataTable();
            adpse.Fill(dtse);
            Label17.Text = dtse.Rows[0]["jobtype"].ToString();

            string sel = "select * from tbl_schedule where schedule_id='" + scheduleid + "'";
            SqlDataAdapter adpsel = new SqlDataAdapter(sel, con);
            DataTable dtsel = new DataTable();
            adpsel.Fill(dtsel);
            Label18.Text = dtsel.Rows[0]["schedule_time"].ToString();

        }
    }
    protected void fillGrid()
    {
        string s = "select * from tbl_jobvaccency jv inner join tbl_application a on a.job_id=jv.job_id inner join tbl_jsregistration js on js.jobseekerj_id=a.jobseekerj_id inner join tbl_place p on p.place_id=js.place_id inner join tbl_districtt d on d.district_id=p.district_id where a.appl_id='" + applid + "' ";
        //SqlDataAdapter adps = new SqlDataAdapter(s, con);
        //DataTable dts = new DataTable();
        //adps.Fill(dts);
        obj.FillGridView(s, GridView1);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dwnl")
        {

            string up = "update tbl_application set dwnl_status='1' where appl_id='" + applid + "'";
            SqlCommand cmd = new SqlCommand(up, con);
            cmd.ExecuteNonQuery();

            string name = e.CommandArgument.ToString();
            Response.AppendHeader("Content-disposition", "attachment;resume=" + name + "");
            Response.TransmitFile(Server.MapPath("../JobSeeker/Resume/" + name));
            Response.End();
            Response.Redirect("Homepage.aspx");
            Response.Write("You can shortlist candidates according resumes");

        }
    }

     



}