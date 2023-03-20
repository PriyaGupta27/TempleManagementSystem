using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class PUB_frmprint : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();

    void filldata()
    {
        lblbookedon.Text = System.DateTime.Now.ToShortDateString();
        lblname.Text = Convert.ToString(Session["Name"]);
        lblarrtime.Text=Convert.ToString(Session["AT"]);

        lblbookdate.Text = Convert.ToString(Session["BD"]);
        lblpoojaname.Text = Convert.ToString(Session["pujatype"]);
        lblprice.Text = Convert.ToString(Session["pujaprice"]);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       // string s = Request.QueryString["Reg"].ToString();
        filldata();
    }
}