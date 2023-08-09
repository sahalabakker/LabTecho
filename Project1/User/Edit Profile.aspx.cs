using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class User_Default : System.Web.UI.Page
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
        string selQry = "select * from tbl_user where user_id = '" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        txtfname.Text = dt.Rows[0]["first_name"].ToString();
        txtlname.Text = dt.Rows[0]["last_name"].ToString();
        txtemail.Text = dt.Rows[0]["user_email"].ToString();
        txtaddress.Text = dt.Rows[0]["user_address"].ToString();
        txtphone.Text = dt.Rows[0]["user_phone"].ToString();
        txtdob.Text = dt.Rows[0]["user_dob"].ToString();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(filephoto.PostedFile.FileName.ToString());
        filephoto.SaveAs(Server.MapPath("../User/photo/" + photoName)); 

        string upQry = "update tbl_user set first_name= '" + txtfname.Text + "', last_name = '" + txtlname.Text + "', user_email = '" + txtemail.Text + "', user_address = '" + txtaddress.Text + "', user_phone = '" + txtphone.Text + "', user_dob = '" + txtdob.Text + "',user_photo='"+filephoto+"' where user_id = '" + Session["uid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Edit successfully') </script>");
             
    }
}