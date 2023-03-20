using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PUB_frmregistration : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    void CLEAR()
    {   
        txtname.Text = "";
        txtmail.Text = "";
        txtphone.Text = "";
      //  ddlgen.SelectedValue = "";
        txtadd.Text = "";
        txtpwd.Text = "";

    }
    void insert()
    {
        try
        {
            string sql = @"insert into  tbl_registration(Name, Emailid, Contactno, Gender, Address)
                            values(@Name, @Emailid, @Contactno, @Gender, @Address)";
            SqlParameter _Name = new SqlParameter("@Name", txtname.Text.Trim());
            SqlParameter _Emailid = new SqlParameter("@Emailid", txtmail.Text.Trim());
            SqlParameter _Contactno = new SqlParameter("@Contactno", txtphone.Text.Trim());
            SqlParameter _Gender = new SqlParameter("@Gender", ddlgen.SelectedValue.Trim());
            SqlParameter _Address = new SqlParameter("@Address", txtadd.Text.Trim());

            if (cls.ExecuteSql(sql, new SqlParameter[] { _Name, _Emailid, _Contactno, _Gender, _Address }) > 0)
            {

                lblmsg.Text = "Your Registration is Successfully Saved...";
                //  Response.Redirect("frmregistration.aspx");

                cls.ExecuteSql("insert into dbo.login_tbl ( Userid, Password, Name, Role, Status ) values ('" + txtmail.Text.Trim() + "','" + txtpwd.Text.Trim() + "','" + txtname.Text.Trim() + "','USER','Y')");
                CLEAR();
            }
            else
            {
                lblmsg.Text = "Already registered";
            }

        }
        catch (Exception exe)
        { }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
   
    
    protected void lnkRegister_Click(object sender, EventArgs e)
    {
        if (txtphone.Text.Trim().Length < 10)
        {
            lblmsg.Text = "Please enter 10 digit Mobile No";
            return;
        }

        if (txtmail.Text.Trim() == "" || txtmail.Text.Trim().Length < 10)
        {
            lblmsg.Text = "Please Enter Valid Email Id";
            txtmail.Focus();
            return;
        }


        insert();
    }
    protected void lnkReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/frmregistration.aspx");
    }
}