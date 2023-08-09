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
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillJobType();
            fillShedule();
        }
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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string insQry = "update tbl_jobvaccency set job_type='" + DropDownList1.SelectedValue + "',qualification='" + txtqualif.Text + "',experience='" + txtexp.Text + "',schedule='" + DropDownList2.SelectedValue + "',job_sdate='" + txtstart.Text + "',job_ldate='" + txtdead.Text + "' where job_id='"+ Session["jid"]+"'";
        obj.ExecuteCommands(insQry);
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        txtqualif.Text = "";
        txtexp.Text = "";
        txtstart.Text = "";
        txtdead.Text = "";

        Response.Write("Job Details Added Successfully");
        Response.Redirect("Home.aspx");

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        txtqualif.Text = "";
        txtexp.Text = "";
        txtstart.Text = "";
        txtdead.Text = "";
    }
}