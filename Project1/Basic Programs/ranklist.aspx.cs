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
    protected void dp1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String fname, lname, fullname, dept, gender, space;
        int ttl, mrk1, mrk2, mrk3;
        float per;
        char grade;
        bool isChecked = rdfemale.Checked;
        fname = txtfname.Text;
        lname = txtlname.Text;
        space = " ";
        fullname = String.Concat(fname, space, lname);
        mrk1 = Convert.ToInt32(txtmrk1.Text);
        mrk2 = Convert.ToInt32(txtmrk2.Text);
        mrk3 = Convert.ToInt32(txtmrk3.Text);
        ttl = mrk1 + mrk2 + mrk3;
        per = (float)ttl * 100;
        per = per / 100;
        dept = dp1.Text;
        if (isChecked)
            gender = rdfemale.Text;
        else
            gender = rdmale.Text;
        if ((ttl <= 100) && (ttl >= 80))
        {
            grade = 'A';
        }
        else if ((ttl <= 80) && (ttl >= 60))
        {
            grade = 'B';
        } 
        else if ((ttl <= 60) && (ttl >= 40))
        {
            grade = 'C';
        } 
        else if ((ttl <= 40) && (ttl >= 35))
        {
            grade = 'D';
        }
        else
        {
            grade = 'F';
        }
        if (gender == "female")
            txtname.Text = String.Concat( "Mrs.", fullname);
        else
            txtname.Text = String.Concat("Mr.", fullname);
        txtgender.Text = gender;
        txtdept.Text = dept;
        txttotal.Text = ttl.ToString();
        txtper.Text = per.ToString();
        txtgrade.Text = grade.ToString();


    }
    
}