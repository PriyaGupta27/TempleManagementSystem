using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PUB_Booking : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();

    int validateBooking()
    {
         int flag = 0;
        try
        {

            int cnt = 0;
            string sql = @"select count(*) as total from pujabooking_tbl where bookingdate=('"+txtbkingd.Text.Trim()+"' )";
            DataTable dt = cls.GetDataTable(sql);
            if (dt.Rows.Count > 0 && dt.Rows[0][0]!=DBNull.Value)
            { 
                 cnt=Convert.ToInt16(dt.Rows[0][0].ToString().Trim());
                 
            }
            return cnt;
        }
        catch (Exception ex) { return flag; }
    }
    void insert()
    {
        try
        {
            string[] price = lblPrice.Text.Trim().Split('/');

            string sql = @"insert into pujabooking_tbl(bookingdate,arrivaltime,pujatype,pujaprice,userid)
                         values(@bookingdate,@arrivaltime,@pujatype,@pujaprice,@userid)";
            SqlParameter _bookdate = new SqlParameter("@bookingdate", txtbkingd.Text.Trim());
            SqlParameter _arrtime = new SqlParameter("@arrivaltime", txtarrival.Text.Trim());
            SqlParameter _userid = new SqlParameter("@userid", Session["UserID"].ToString().Trim());
            SqlParameter _pujatype = new SqlParameter("@pujatype",Convert.ToString(Session["pujaid"]).Trim());
            SqlParameter _pujaprice = new SqlParameter("@pujaprice", price[0].Trim());
            if (cls.ExecuteSql(sql, new SqlParameter[] { _bookdate, _arrtime, _userid, _pujatype, _pujaprice }) > 0)
            {
                Session["AT"] = txtarrival.Text.Trim();
                Session["BD"] = txtbkingd.Text.Trim();
                
                lblmsg.Text = "Your Booking is Successfully Saved...";
                //  Response.Redirect("frmregistration.aspx");
                WinOpen("frmprint.aspx");
            }
            else
            {
                lblmsg.Text = "Already booked";
            }
        }
        catch (Exception ex)
        { }
    }

    public void WinOpen(string msg)
    {
        string strScript = string.Format("window.open('" + msg + "','name','type=resizable=Yes,height=500,width=500,toolbar=0,addressbar =0, scrollbars=yes');", msg);
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "strScript", strScript, true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (validateBooking() > 5)
        {
            lblmsg.Text = "Booking Not avl...";
            return;
        }
        Session["AT"] = null;
        Session["BD"] = null;
       
        insert();
        
    }

    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pujatype"] == null)
        {
            Response.Redirect("~/frmlogin.aspx");
        }

        if (Session["pujatype"] != null)
        {
            lblPujatype.Text = Session["pujatype"].ToString().Trim();
            lblPrice.Text = Session["pujaprice"].ToString().Trim();
            
        }
    }
}