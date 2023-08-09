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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_jobapplication j inner join tbl_jobvaccency jv on jv.job_id=j.job_id inner join tbl_labregistration l on l.lab_id=jv.lab_id inner join tbl_place p on p.place_id=l.place_id inner join tbl_districtt d on p.district_id=d.district_id where jobseekerj_id='"+ Session["uid"]+"'";
        //SqlDataAdapter adap = new SqlDataAdapter(setQuery, con);
        //DataTable dt = new DataTable();
        //adap.Fill(dt);
        //grdcategory.DataSource = dt;
        //grdcategory.DataBind();
        obj.FillGridView(setQuery, GridView1);


    }
    
}