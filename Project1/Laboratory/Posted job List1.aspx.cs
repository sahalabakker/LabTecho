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
    public int labid,placeid,id1,id2;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


        if (!IsPostBack)
        {
            Panel1.Visible = false;
            fillloc();
        }
    }
    protected void fillloc()
    {
       
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "vm")
        {
           id1 = Convert.ToInt32(e.CommandArgument.ToString());
           id2 = id1;
            Panel1.Visible = true;
            string selQ = "select * from tbl_jobvaccency where job_id='" +id1 + "'";
            SqlDataAdapter adp = new SqlDataAdapter(selQ, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            Label10.Text = dt.Rows[0]["job_name"].ToString();
            labid = Convert.ToInt32(dt.Rows[0]["lab_id"].ToString());
            string s = "select * from tbl_labregistration where lab_id='" + labid + "'";
            SqlDataAdapter adps = new SqlDataAdapter(s, con);
            DataTable dts = new DataTable();
            adps.Fill(dts);
            Label11.Text = dts.Rows[0]["lab_name"].ToString();
            int placeid=Convert.ToInt32(dts.Rows[0]["place_id"].ToString());
            string se = "select * from tbl_place where place_id='" + placeid + "'";
            SqlDataAdapter adpse = new SqlDataAdapter(se, con);
            DataTable dtse = new DataTable();
            adpse.Fill(dtse);
            Label12.Text = dtse.Rows[0]["place_name"].ToString();
            int disid = Convert.ToInt32(dtse.Rows[0]["district_id"].ToString());
            string sel = "select * from tbl_districtt where district_id='" + disid + "'";
            SqlDataAdapter adpsel = new SqlDataAdapter(sel, con);
            DataTable dtsel = new DataTable();
            adpsel.Fill(dtsel);
            Label13.Text = dtsel.Rows[0]["district_name"].ToString();
            Label14.Text = dt.Rows[0]["job_salary"].ToString();

            int jobtype = Convert.ToInt32(dt.Rows[0]["job_type"].ToString());
            string selQu = "select * from tbl_jobtype where jobtype_id='" + jobtype + "'";
            SqlDataAdapter adpselQu = new SqlDataAdapter(selQu, con);
            DataTable dtselQu = new DataTable();
            adpselQu.Fill(dtselQu);
            Label15.Text = dtselQu.Rows[0]["jobtype_name"].ToString();

            Label16.Text = dt.Rows[0]["qualification"].ToString();
            Label17.Text = dt.Rows[0]["experience"].ToString();

            Label19.Text = dt.Rows[0]["job_ldate"].ToString();
            Label20.Text = dt.Rows[0]["job_sdate"].ToString();

            int schedule = Convert.ToInt32(dt.Rows[0]["schedule"].ToString());
            string selQue = "select * from tbl_schedule where schedule_id='" + schedule + "'";
            SqlDataAdapter adpselQue = new SqlDataAdapter(selQue, con);
            DataTable dtselQue = new DataTable();
            adpselQue.Fill(dtselQue);
            Label21.Text = dtselQue.Rows[0]["schedule_time"].ToString();
        }
        if (e.CommandName == "up")
        {
            Response.Redirect("Job Update.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandArgument == "del")
        {
            int jid=Convert.ToInt32(e.CommandArgument.ToString());
            string up = "delete from tbl_jobvaccency where job_id='" + jid + "'";
            obj.ExecuteCommands(up);
        }
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        string up = "delete from tbl_jobvaccency where job_id='" + id2 + "'";
        obj.ExecuteCommands(up);
    }
}