using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            lblCardNumber.Text  = Session["accno"].ToString();

            lbl_Payto.Text = "laboratory@tavelportal.com";
            lbl_Amount.Text = Session["amount"].ToString();
        }
    }

    protected void lblCopyIt_Click(object sender, EventArgs e)
    {
        //Code to copy address from table
        string str = "select * from tbl_user  where user_id='" + Session["uid"] + "'";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["first_name"].ToString();
            txtAddress.Text = dt.Rows[0]["user_address"].ToString();
            //txtPlace.Text = dt.Rows[0]["place_name"].ToString();
            //txtState.Text = dt.Rows[0]["district_name"].ToString();
            txtEmail.Text = dt.Rows[0]["user_email"].ToString();
            txtPhone.Text = dt.Rows[0]["user_phone"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Third.aspx");
    }

}