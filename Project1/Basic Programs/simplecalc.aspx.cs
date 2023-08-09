using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Basic_Programs_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnsub_Click(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(txtnum1.Text);
        b = Convert.ToInt32(txtnum2.Text);
        c = a - b;
        txtrslt.Text = c.ToString();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(txtnum1.Text);
        b = Convert.ToInt32(txtnum2.Text);
        c = a + b;
        txtrslt.Text = c.ToString();
    }
}