using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillPlayer();
            fillTeam();
        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        foreach (ListItem ch in cblplayer.Items)
        {
        
            if (ch.Selected == true)
            {
                string selQry = "insert into tbl_selection (team_id,player_id1,[player id2],player_id3) values ('" + ddlteam.SelectedValue + "','" + ch.Value + "','"+ch.Value+"','"+ch.Value+"')";
                obj.ExecuteCommands(selQry);
            }
        }
    }
    protected void fillTeam()
    {
        obj.FillDrop(ddlteam,"team_name", "team_id", "tbl_team");
    }
    protected void fillPlayer()
    {
        obj.FillCheck(cblplayer, "player_name", "player_id", "tbl_player");
    }
    protected void grdselection_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdselection_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}