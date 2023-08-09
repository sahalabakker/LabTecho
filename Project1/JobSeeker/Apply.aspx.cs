using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class JobSeeker_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    protected void fillgrid()
    {
        string selQry = "select * from tbl_jobvaccency where job_id = '" + Session["job"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        DetailsView1.DataSource = dt;
        DetailsView1.DataBind();

    }



    protected void btnapply_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_jobapplication (jobseekerj_id,job_id,appl_status,applied_date) values ('" + Session["uid"] + "','" + Session["job"] + "','0','" + DateTime.Now.ToShortDateString() + "')";
        SqlCommand cmd = new SqlCommand(insQry, con); 
        cmd.ExecuteNonQuery();
        Response.Redirect("./Homepage.aspx");
    }
}