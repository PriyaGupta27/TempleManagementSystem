using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class USER_History : System.Web.UI.Page
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
        string sql = @"SELECT     pujabooking_tbl.bookingdate, pujabooking_tbl.arrivaltime, pujabooking_tbl.pujaprice, pujabooking_tbl.bookedon, 
                      pujalist_tbl.pujatype 
                      FROM pujabooking_tbl LEFT OUTER JOIN
                      pujalist_tbl ON pujabooking_tbl.pujatype = pujalist_tbl.pujaid where  pujabooking_tbl.userid='" + Convert.ToString(Session["UserID"]) + "'";
        DataTable dt = cls.GetDataTable(sql);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}