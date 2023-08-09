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
    static int idNo;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_jobvaccency j inner join tbl_labregistration l on j.lab_id=l.lab_id inner join tbl_jobseekertype js on j.jobseeker_id=js.jobseeker_id where j.jobseeker_id='7'";
        obj.FillGridView(setQuery, GridView1); 
        //String setQuery1 = "select * from tbl_labregistration";
        //obj.FillGridView(setQuery1, GridView1);


    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "app")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            //string sel="select from tbl_jobvaccency job_nvaccency where job_id='"+ idNo+"'";
            //string upQry = "update tbl_jobvaccency set job_status='1' where job_id = '" + idNo + "'";
           //string upQry1="update tbl_jobvaccency set job_nvaccency="
            Session["job"] = idNo;
            //obj.ExecuteCommands(upQry);
            Response.Redirect("Apply.aspx");
            fillGrid();
        }
    }
    
    protected void btnapply_Click(object sender, EventArgs e)
    {
      
    }
}