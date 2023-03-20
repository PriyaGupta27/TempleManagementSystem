using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    void insert()
    {
        try
        {
            string sql = @"insert into  feedback_tbl(Name, Mobile, Email, Remarks)
                            values(@Name, @Mobile, @Email, @Remarks)";
            SqlParameter _Name = new SqlParameter("@Name", txtfname.Text.Trim());
            SqlParameter _Mobile = new SqlParameter("@Mobile", txtfmob.Text.Trim());
            SqlParameter _Email = new SqlParameter("@Email", txtfemail.Text.Trim());
            SqlParameter _Remarks = new SqlParameter("@Remarks", txtfremarks.Text.Trim());

            if (cls.ExecuteSql(sql, new SqlParameter[] { _Name, _Mobile, _Email, _Remarks }) > 0)
            {

                lblmsg.Text = "Your Feedback is Successfully Submitted...";
                
            }
            else
            {
                lblmsg.Text = "Not Submitted";
            }

        }
        catch (Exception exe)
        { }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void lnkbtnfeed_Click(object sender, EventArgs e)
    {

        if (txtfmob.Text.Trim().Length < 10)
        {
            lblmsg.Text = "Please enter 10 digit Mobile No";
            return;
        }
        insert();
    }
}