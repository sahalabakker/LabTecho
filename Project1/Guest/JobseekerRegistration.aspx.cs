using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Guest_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillDistrict();
            fillJobtype();
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
    protected void fillJobtype()
    {
        string selQry = "select * from tbl_jobseekertype";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        ddljbtype.DataSource = dt;
        ddljbtype.DataTextField = "jobtype";
        ddljbtype.DataValueField = "jobseeker_id";
        ddljbtype.DataBind();
        ddljbtype.Items.Insert(0, "--select--");
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(filephoto.PostedFile.FileName.ToString());
        filephoto.SaveAs(Server.MapPath("../User/photo/" + photoName));
        string cvName = Path.GetFileName(filecv.PostedFile.FileName.ToString());
        filecv.SaveAs(Server.MapPath("./proof/cv/" + cvName));

        string insQry = "insert into tbl_jsregistration (jobseeker_id,usertype_id,js_fname,js_lname,js_email,js_password,js_dob,js_gender,js_qualif,place_id,js_status,js_phone,js_address,js_exp,js_photo,js_cv) values ('" + ddljbtype.SelectedValue + "', 'jobseeker','" + txtfname.Text + "', '" + txtlname.Text + "', '" + txtemail.Text + "','" + txtpass.Text + "','" + txtdob.Text + "','" + rbgender.SelectedValue + "','" + txtqual.Text + "','" + ddlplace.SelectedValue + "','0','"+ txtcont.Text+"','"+ txtaddress.Text +"','"+ txtexp.Text +"','"+ photoName +"','"+ cvName +"')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcont.Text = "";
        txtdob.Text = "";
        txtpass.Text = "";
        txtexp.Text = "";
        
        rbgender.ClearSelection();
        txtaddress.Text = "";
        ddldistrict.ClearSelection();
        ddlplace.ClearSelection();
        ddljbtype.ClearSelection();
        // txtpassword.Text = "";
    }
    
    protected void ddldistrict_SelectedIndexChanged1(object sender, EventArgs e)
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