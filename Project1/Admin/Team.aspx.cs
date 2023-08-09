using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(flag.PostedFile.FileName.ToString());
        flag.SaveAs(Server.MapPath("photo/" + photoName));
        string insQry = "insert into tbl_team (team_name,team_owner,team_flag) values ('" +txtname.Text +"','" +txtowner.Text+ "','" + photoName + "') ";
        obj.ExecuteCommands(insQry);
        txtname.Text = "";
        txtowner.Text = "";
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtowner.Text = "";
    }
}