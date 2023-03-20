using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PUB_Donation : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
       void insert()
       {
           try
           {
               string sql = @"insert into  Donation_tbl(Donationfor,Name,Mobile,Email,Amount)
                               values(@Donationfor,@Name,@Mobile,@Email,@Amount)";
               SqlParameter _Donationfor = new SqlParameter("@Donationfor", ddldonate.SelectedValue.Trim());
               SqlParameter _Name = new SqlParameter("@Name", txtdname.Text.Trim());
               SqlParameter _Mobile = new SqlParameter("@Mobile", txtdmob.Text.Trim());
               SqlParameter _Email = new SqlParameter("@Email", txtdmail.Text.Trim());
               SqlParameter _Amount = new SqlParameter("@Amount", txtdamt.Text.Trim());

               if (cls.ExecuteSql(sql, new SqlParameter[] {_Donationfor, _Name, _Mobile, _Email,_Amount }) > 0)
               {

                   lblmsg.Text = "Thank You For Donating.......";
                   //  Response.Redirect("frmregistration.aspx");

               }
               else
               {
                   lblmsg.Text = "Try Again";
               }

           }
           catch (Exception exe)
           { }
       }

    //public void WinOpen(string msg)
    //{
    //    string strScript = string.Format("window.open('" + msg + "','name','type=resizable=Yes,height=600,width=800,toolbar=0,addressbar =0, scrollbars=yes');", msg);
    //    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "strScript", strScript, true);
    //}
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  

    protected void lnkbtndonate_Click(object sender, EventArgs e)
    {
        if (txtdmob.Text.Trim().Length < 10)
        {
            lblmsg.Text = "Please enter 10 digit Mobile No";
            return;
        }


        insert();
        //WinOpen("frmprint.aspx");
    }
}