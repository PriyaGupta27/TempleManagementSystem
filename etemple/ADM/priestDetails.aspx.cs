using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void CLEAR()
    {
        txtname.Text = "";
        txtmob.Text = "";
        txtaddress.Text = "";
        txtmailid.Text = "";
        txtdoj.Text = "";
    }
    void insert()
    {
        try
        {
            string sql = @"insert into  tbl_priest(Name,Contactno,Address,Emailid,doj)
                            values(@Name, @Contactno, @Address, @Emailid,@doj)";
            SqlParameter _Name = new SqlParameter("@Name", txtname.Text.Trim());
            SqlParameter _Phone = new SqlParameter("@Contactno", txtmob.Text.Trim());
            SqlParameter _Emailid = new SqlParameter("@Emailid", txtmailid.Text.Trim());
            SqlParameter _Address = new SqlParameter("@Address", txtaddress.Text.Trim());
            SqlParameter _Dateofjoining = new SqlParameter("@doj", txtdoj.Text.Trim());
            if (cls.ExecuteSql(sql, new SqlParameter[] { _Name, _Emailid, _Phone, _Address, _Dateofjoining }) > 0)
            {
                CLEAR();
                lblmsg.Text = "Your Registration is Successfully Saved...";
                //  Response.Redirect("frmregistration.aspx");
            }
            else
            {
                lblmsg.Text = "Already registered";
            }

        }
        catch (Exception ex) { }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        insert();
    }
}