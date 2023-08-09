using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_user where user_id ='" + Session["uid"] + "'";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        if (dt.Rows[0]["user_password"].ToString() == txtoldpass.Text)
        {
            if (txtnewpass.Text == txtconpass.Text)
            {
                string upQry = "update tbl_user set user_password = '" + txtnewpass.Text + "' where user_id = '" + Session["uid"] + "'";
                SqlCommand cmd = new SqlCommand(upQry, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('password change successfully') </script>");
            }
            if (txtnewpass.Text != txtconpass.Text)
            {
                Response.Write("<script> alert('not match') </script>");
            }
        }
        else
        {
            Response.Write("<script> alert('invalid password') </script>");
        }

    }


}
   