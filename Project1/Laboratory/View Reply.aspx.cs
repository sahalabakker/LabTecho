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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        String setQuery = "select * from tbl_complaint t inner join tbl_complainttype ct on t.complainttype_id=ct.complainttype_id where lab_id='"+Session["uid"]+"' and reply!='NULL'";
        obj.FillGridView(setQuery, GridView1);



    }
}