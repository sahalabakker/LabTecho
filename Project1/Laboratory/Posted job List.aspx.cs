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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


        if (!IsPostBack)
        {
            Panel4.Visible = false;
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "vm")
        {
            Panel4.Visible = true;
           
        }
        if (e.CommandName == "up")
        {
            Response.Redirect("Job Update.aspx?id=" + e.CommandArgument.ToString());
        }
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "vm")
        {
            Panel4.Visible = true;
            //Response.Redirect("More Job Details.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "up")
        {
            Response.Redirect("Job Update.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}