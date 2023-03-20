using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ContactUs : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    void insert()
    {
        try
        {
            string sql = @"insert into tbl_contactUs(Name,EmailID,Mobile,msg)
                           values(@Name,@EmailID,@Mobile,@msg)";
            SqlParameter _Name = new SqlParameter("@Name", txtname.Text.Trim());
            SqlParameter _EmailID = new SqlParameter("@EmailID", txtemail.Text.Trim());
            SqlParameter _Mobile = new SqlParameter("@Mobile", txtno.Text.Trim());
            SqlParameter _msg = new SqlParameter("@msg", txtmsg.Text.Trim());
            if (cls.ExecuteSql(sql, new SqlParameter[] { _Name, _EmailID, _Mobile,_msg }) > 0)
            {
                lblmsg.Text ="We will try to connect you...";
            }
            else
            {
                lblmsg.Text = "Try again..";
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkbtnsend_click(object sender, EventArgs e)
    {
        insert();
    }
}