using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDisplay();
            
        }
    }
    protected void fillDisplay()
    {
        txtid.Text = Session["b_id"].ToString();
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        string fileName = Path.GetFileName(filerslt.PostedFile.FileName.ToString());
        filerslt.SaveAs(Server.MapPath("./Report/" + fileName));
        string insQry = "update tbl_tstresult set result='" + fileName + "' where test_id='"+Session["testid"]+"' and book_id='"+Session["b_id"]+"'";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        

    }
}