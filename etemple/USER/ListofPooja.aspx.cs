using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ListofPooja : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindgrid();
        }
    }
    void bindgrid()
    {
        string sql = @"SELECT     pujaid, pujatype,CAST(pujaprice as varchar(20))+'/Rs'as pujaprice
                    FROM         pujalist_tbl";

        DataTable dt = cls.GetDataTable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Session.Clear();
        LinkButton lnlButton = (LinkButton)sender;

        GridViewRow gvr = (GridViewRow)lnlButton.NamingContainer;

        Session["pujaid"] = GridView1.DataKeys[gvr.RowIndex].Values["pujaid"].ToString();
        Session["pujatype"] = GridView1.DataKeys[gvr.RowIndex].Values["pujatype"].ToString();

        Session["pujaprice"] = GridView1.DataKeys[gvr.RowIndex].Values["pujaprice"].ToString();
           
            Response.Redirect("Booking.aspx");
        
            //Response.Redirect("USER/Booking.aspx");

        }
    }
