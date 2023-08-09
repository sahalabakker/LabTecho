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
        string photoName = Path.GetFileName(photo.PostedFile.FileName.ToString());
        photo.SaveAs(Server.MapPath("photo/" + photoName));

        string insQry = "insert into tbl_player(player_name,player_dob,player_photo) values ('" + txtname.Text + "','" + txtdob.Text + "','" + photoName + "')";
        obj.ExecuteCommands(insQry);
        txtname.Text = "";
        txtdob.Text = "";
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtdob.Text = "";

    }
}