using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class frmLogin : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     private   void Loadlogin()
    {
        try
        {
            string Query = @"select  UserID, l.Name, Password, Role,Status  from login_tbl  as l

                left outer join tbl_registration as r on l.UserID=r.Emailid
                    where l.UserID='" +txtuser.Text.Trim()+"' and l.Password='"+txtpass.Text.Trim()+"'   and l.Status='Y'";

            DataTable dt = cls.GetDataTable(Query);

            if (dt.Rows.Count > 0)
            {
                Session.Clear();
                FormsAuthentication.Initialize();
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, txtuser.Text.Trim(), DateTime.Now, DateTime.Now.AddMinutes(30), false, dt.Rows[0]["Role"].ToString().Trim(), FormsAuthentication.FormsCookiePath);

                // Encrypt the cookie using the machine key for secure transport
                string hash = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash); // Hashed ticket

                // Set the cookie's expiration time to the tickets expiration time
                if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

                // Add the cookie to the list for outgoing response
                Response.Cookies.Add(cookie);

                string Role = dt.Rows[0]["Role"].ToString();
                Session["UserID"] = dt.Rows[0]["UserID"].ToString();
                Session["Role"] = dt.Rows[0]["Role"].ToString();
                Session["Name"] = dt.Rows[0]["Name"].ToString();

                Session["UserCrd"] = "User Name : " + dt.Rows[0]["Name"].ToString() + " User Id : " + dt.Rows[0]["UserID"].ToString();

                if (Role.Trim() == "ADM")
                {
                    Response.Redirect("ADM/Default.aspx");
                }
                if (Role.Trim() == "USER")
                {
                    Response.Redirect("USER/Default.aspx");
                }

            }
            else
            {
                lblmsg.Text = "Invalid User id or Password... ";
            }

        }
        catch (Exception exe)
        { }


    }

   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (txtpass.Text.Trim() == "")
        {
            //txtpass.BackColor = Color.Red;
            txtpass.BorderColor = Color.Red;

        }

        Loadlogin();
    }
}