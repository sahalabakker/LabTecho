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

        if (!Page.IsPostBack)
        {
            lblMurchant.Text = "LaboratoryPortal";
            lblDate.Text = DateTime.Now.ToShortDateString();
            lblAmoubnt.Text = Session["amount"].ToString();
            lblTID.Text = GetISB().ToString();
        }
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string ins = "insert into tbl_payment(book_id,payment_date,payment_amount,payment_transno,status)values('" + Session["bookid"] + "','" + DateTime.Now.ToShortDateString() + "','" + Session["amount"] + "','"+lblTID.Text+"','1')";
        obj.ExecuteCommands(ins);
        string ins1 = "update tbl_booking set payment_status='payed' where book_id='" + Session["bookid"]+ "'";
        obj.ExecuteCommands(ins1);


        Response.Redirect("~/User/Home.aspx");
            
        
    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

    }
} 