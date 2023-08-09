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
    protected void btnsmall_Click(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(txt1.Text);
        b = Convert.ToInt32(txt2.Text);
        c = Convert.ToInt32(txt3.Text);
        if (a < b)
        {
            if (a < c)
                txtrslt.Text = a.ToString();
            else
                txtrslt.Text = c.ToString();
        }
        else 
        {
            if (b < c)
                txtrslt.Text = b.ToString();
            else
                txtrslt.Text = c.ToString();
        }
    }


    protected void btnlarge_Click(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(txt1.Text);
        b = Convert.ToInt32(txt2.Text);
        c = Convert.ToInt32(txt3.Text);
        if (a > b)
        {
            if (a > c)
                txtrslt.Text = a.ToString();
            else
                txtrslt.Text = c.ToString();
        }
        else
        {
            if (b > c)
                txtrslt.Text = b.ToString();
            else
                txtrslt.Text = c.ToString();
        }
    }
}