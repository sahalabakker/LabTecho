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
    protected void btnreg_Click(object sender, EventArgs e)
    {
        string photoName = Path.GetFileName(filelogo.PostedFile.FileName.ToString());
        filelogo.SaveAs(Server.MapPath("../User/photo/" + photoName)); 
        
        string proofName = Path.GetFileName(fileproof.PostedFile.FileName.ToString());
        fileproof.SaveAs(Server.MapPath("./proof/" + proofName));



        string insQry = "insert into tbl_labregistration (lab_name,lab_license,place_id,lab_logo,lab_proof,lab_password,lab_email,lab_phone,lab_accred,lab_status,usertype_id,opening_time,address) values ('" + labname.Text + "', '" + txtlicense.Text + "','" + ddlplace.SelectedValue + "', '" + photoName + "', '" + proofName + "','" + txtpass.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtaccred.Text + "','0','lab','"+ txtotime.Text+"','"+ txtaddress.Text+"')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        labname.Text = "";
        txtlicense.Text = "";
        txtemail.Text = "";
        txtaddress.Text = "";
        txtotime.Text = "";
        txtpass.Text = "";
        txtcon.Text = "";
        txtcontact.Text = "";
        txtaccred.Text = "";
        ddldistrict.ClearSelection();
        ddlplace.ClearSelection();
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