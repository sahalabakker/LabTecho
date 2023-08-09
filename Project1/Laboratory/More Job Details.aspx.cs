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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string selQ = "select * from tbl_jobvaccency where job_id='" + Request.QueryString["id"] + "'";
            SqlDataAdapter adp = new SqlDataAdapter(selQ, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            Label2.Text=dt.Rows[0]["job_name"].ToString();
            Label8.Text = dt.Rows[0]["qualification"].ToString();
            int labid = Convert.ToInt32(dt.Rows[0]["lab_id"].ToString());
            string sel = "select * from tbl_labregistration where lab_id='" + labid + "'";
            SqlDataAdapter adp1 = new SqlDataAdapter(sel, con);
            DataTable dt1 = new DataTable();
            adp1.Fill(dt1);
            Label3.Text = dt1.Rows[0]["lab_name"].ToString();
            int placeid = Convert.ToInt32(dt1.Rows[0]["place_id"].ToString());
            string selQuery = "select * from tbl_place where place_id='" + placeid + "'";
            SqlDataAdapter adp2 = new SqlDataAdapter(selQuery, con);
            DataTable dt2 = new DataTable();
            adp2.Fill(dt2);
            Label4.Text = dt2.Rows[0]["place_name"].ToString();
            int districtid = Convert.ToInt32(dt2.Rows[0]["district_id"].ToString());
            string selQueryy = "select * from tbl_districtt where district_id='" + districtid + "'";
            SqlDataAdapter adp3 = new SqlDataAdapter(selQueryy, con);
            DataTable dt3 = new DataTable();
            adp3.Fill(dt3);
            Label5.Text = dt3.Rows[0]["district_name"].ToString();
            Label6.Text = dt.Rows[0]["job_salary"].ToString();
            int jobtype = Convert.ToInt32(dt.Rows[0]["job_type"].ToString());
            string selQu = "select * from tbl_jobtype where jobtype_id='" + jobtype + "'";
            SqlDataAdapter adp4 = new SqlDataAdapter(selQu, con);
            DataTable dt4 = new DataTable();
            adp4.Fill(dt4);
            Label7.Text = dt4.Rows[0]["jobtype_name"].ToString();
            //Label8.Text=dt.Rows[0][""]
            Label9.Text = dt.Rows[0]["qualification"].ToString();
            Label10.Text = dt.Rows[0]["experience"].ToString();
            Label11.Text = dt.Rows[0]["job_ldate"].ToString();
            Label12.Text = dt.Rows[0]["job_sdate"].ToString();
            Label13.Text = dt4.Rows[0]["jobtype_name"].ToString();
            Label14.Text = dt.Rows[0]["job_salary"].ToString();
            int scheduleid = Convert.ToInt32(dt.Rows[0]["schedule"].ToString());
            string s = "select * from tbl_schedule where schedule_id='" + scheduleid + "'";
            SqlDataAdapter adp5 = new SqlDataAdapter(s, con);
            DataTable dt5 = new DataTable();
            adp5.Fill(dt5);
            Label15.Text = dt5.Rows[0]["schedule_time"].ToString();
        }
    }
}