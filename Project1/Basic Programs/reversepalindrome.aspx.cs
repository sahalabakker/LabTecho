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
    protected void btnsum_Click(object sender, EventArgs e)
    {
        int n, d, sum = 0;
        n = Convert.ToInt32(txtnum.Text);
        while (n > 0)
        {
            d = n % 10;
            sum = sum + d;
            n = n / 10;
        }
        txtrslt.Text = sum.ToString();
    }
    protected void btnrevers_Click(object sender, EventArgs e)
    {
        int n, d, reverse = 0;
        n = Convert.ToInt32(txtnum.Text);
        while (n > 0)
        {
            d = n % 10;
            reverse = (reverse * 10) + d;
            n = n / 10;
        }
        txtrslt.Text = reverse.ToString();
    }
    protected void btnpalindrome_Click(object sender, EventArgs e)
    {
        int n, d, reverse = 0, temp;
        string palindrome;
        n = Convert.ToInt32(txtnum.Text);
        temp = n;
        while (n > 0)
        {
            d = n % 10;
            reverse = (reverse * 10) + d;
            n = n / 10;
        }
        if (temp == reverse)
        palindrome = "palindrome"; 
        else
        palindrome = "not palindrome";
        txtrslt.Text = palindrome.ToString();
    }
}