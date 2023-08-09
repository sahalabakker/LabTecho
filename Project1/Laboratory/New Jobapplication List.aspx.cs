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
        String setQuery = "select * from tbl_jsregistration js inner join tbl_jobapplication ja on js.jobseekerj_id=ja.jobseekerj_id inner join tbl_jobvaccency jv on ja.job_id=jv.job_id inner join tbl_jobseekertype jt on jt.jobseeker_id=jv.jobseeker_id inner join tbl_place p on js.place_id=p.place_id inner join tbl_districtt d on d.district_id=p.district_id where ja.appl_status='0'"; 
        obj.FillGridView(setQuery, GridView1);



    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "acce")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string upQry = "update tbl_jobapplication set appl_status='approved' where appl_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            fillGrid();
        }
        if (e.CommandName == "rej")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string upQryy = "update tbl_jobapplication set appl_status='not approved' where appl_id = '" + idNo + "'"; 
            obj.ExecuteCommands(upQryy);
            fillGrid();
        }
    }
}