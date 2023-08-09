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
        string selQry = "select * from tbl_labregistration where lab_id = '" + Session["lid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtlname.Text = dt.Rows[0]["lab_name"].ToString();
        //txtlname.Text = dt.Rows[0]["last_name"].ToString();
        txtemail.Text = dt.Rows[0]["lab_email"].ToString();
        txtaccre.Text = dt.Rows[0]["lab_accred"].ToString();
        txtcont.Text = dt.Rows[0]["lab_phone"].ToString();
        txtaddress.Text = dt.Rows[0]["address"].ToString();
        txtwork.Text = dt.Rows[0]["opening_time"].ToString();
        //txtdob.Text = dt.Rows[0]["user_dob"].ToString();
        //filephoto.Text = dt.Rows[0]["lab_logo"].ToString();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(filephoto.PostedFile.FileName.ToString());
        filephoto.SaveAs(Server.MapPath("../User/photo/" + photoName)); 

        string upQry = "update tbl_labregistration set lab_name= '" + txtlname.Text + "', lab_email = '" + txtemail.Text + "', lab_accred = '" + txtaccre.Text + "', lab_phone = '" + txtcont.Text + "',address='"+txtaddress.Text+"',opening_time='"+txtwork.Text+"',lab_logo='"+photoName+"' where lab_id = '" + Session["lid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Edit successfully') </script>");
    }
}