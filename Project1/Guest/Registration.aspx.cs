using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Basic_Programs_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
        }
    }
    protected void fillDistrict()
    {
        string selQry = "select * from tbl_districtt";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddldistrict.DataSource = dt;
        ddldistrict.DataTextField = "district_name";
        ddldistrict.DataValueField = "district_id";
        ddldistrict.DataBind();
        ddldistrict.Items.Insert(0, "--select--");
    }



    
    protected void btnregister_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(filephoto.PostedFile.FileName.ToString());
        filephoto.SaveAs(Server.MapPath("../User/photo/" + photoName)); 
        
        
        string insQry = "insert into tbl_user (first_name,last_name,user_email,user_phone,user_dob,user_gender,user_address,place_id,user_photo,user_password,user_status) values ('" + txtfname.Text + "', '" + txtlname.Text + "','" + txtemail.Text + "', '" + txtcontact.Text + "', '" + txtdob.Text + "','" + rbgender.SelectedValue + "','" + txtaddress.Text + "','" + ddlplace.SelectedValue + "','" + photoName + "','" + txtpass.Text + "','0')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtdob.Text = "";
        rbgender.ClearSelection();
        txtaddress.Text = "";
        ddldistrict.ClearSelection();
        ddlplace.ClearSelection();
       // txtpassword.Text = "";
    }


    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_place where district_id='" + ddldistrict.SelectedValue + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddlplace.DataSource = dt;
        ddlplace.DataTextField = "place_name";
        ddlplace.DataValueField = "place_id";
        ddlplace.DataBind();
        ddldistrict.Items.Insert(0, "");
    }
}