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
        string sel = "select * from tbl_feedback where lab_id='" + Session["lid"] + "'";
        obj.FillGridView(sel, GridView1);
    }

}