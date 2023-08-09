using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobSeeker_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = Session["uname"].ToString();
        
    }
    protected void btnset_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Settings.aspx");
    }
}