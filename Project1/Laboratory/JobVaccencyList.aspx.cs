using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
//using System.IO;


public partial class Laboratory_Default : System.Web.UI.Page
{
    CommonClass obj = new CommonClass();
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IO6V38C\\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True");
    static int idNo, flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            fillCategory();
            //fillGrid();
        }
    }
    
    protected void fillCategory()
    {
        obj.FillDrop(ddljtype, "jobtype", "jobseeker_id", "tbl_jobseekertype");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_jobvaccency set jobseeker_id= '" + ddljtype.SelectedValue + "',job_name= '" + txtjname.Text + "',job_nvaccency= '" + txtnvacc.Text + "',job_discrip='"+ txtdiscrip.Text +"',job_salary='"+ txtsal.Text+"' where job_id= '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(upQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(upQry);
            flag = 0;
        }
        else
        {
            string insQry = "insert into tbl_jobvaccency(jobseeker_id,lab_id,job_name,job_nvaccency,job_discrip,job_salary,job_status)values('" + ddljtype.SelectedValue + "','" + Session["lid"] + "','"+txtjname.Text+"','"+txtnvacc.Text+"','"+txtdiscrip.Text+"','"+ txtsal.Text +"','0')";
            //SqlCommand cmd = new SqlCommand(insQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(insQry);
            SqlCommand cmd2 = new SqlCommand("select max(job_id) from tbl_jobvaccency", con);

            string a = Convert.ToString(cmd2.ExecuteScalar());
            Session["jid"] = a.ToString();
        }
        txtjname.Text = "";
        txtnvacc.Text = "";
        //txtdate.Text = "";

        ddljtype.ClearSelection();
        txtdiscrip.Text = "";
        txtsal.Text = "";
        //txtldate.Text = "";
        
        //fillGrid();
        Response.Redirect("Next.aspx");
        
    }
    /*protected void fillGrid()
    {
        string selQry = "select * from tbl_jobvaccency where lab_id='"+ Session["uid"]+"'"; 
        obj.FillGridView(selQry, GridView1);
    }*/
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtjname.Text = "";
        txtnvacc.Text = "";
        //txtdate.Text = "";

        ddljtype.ClearSelection();
        txtdiscrip.Text = "";
        txtsal.Text = "";
        //txtldate.Text = "";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int idNo = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_jobvaccency where job_id = '" + idNo + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommands(delQry);
           // fillGrid();
        }

        if (e.CommandName == "ed")
        {
            idNo = Convert.ToInt32(e.CommandArgument.ToString()); 
            string selQry = "select * from tbl_jobvaccency where job_id = '" + idNo + "'";
            //string selQry = "select * from tbl_subcategory s inner join tbl_category c on s.category_id = c.category_id where s.subcategory_id = '" + idNo + "'";
            //SqlDataAdapter adap = new SqlDataAdapter(selQry, con);
            //DataTable dt = new DataTable();
            //adap.Fill(dt);
            DataTable dt = obj.GetDataTable(selQry);
            txtjname.Text = dt.Rows[0]["job_name"].ToString();
            txtnvacc.Text = dt.Rows[0]["job_nvaccency"].ToString(); 
            txtdiscrip.Text = dt.Rows[0]["job_discrip"].ToString();
            txtsal.Text = dt.Rows[0]["job_salary"].ToString();
            //txtldate.Text = dt.Rows[0]["job_sdate"].ToString();
            ddljtype.SelectedValue = dt.Rows[0]["jobseeker_id"].ToString();
            flag = 1;
        }
    }

    
}