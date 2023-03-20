using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SearchPoojaBooking : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        string strWhere = string.Empty;
        string sql = @"SELECT     pujabooking_tbl.userid, pujabooking_tbl.bookedon,pujabooking_tbl.bookingdate, pujabooking_tbl.arrivaltime,pujalist_tbl.pujatype, pujabooking_tbl.pujaprice 
            FROM         pujabooking_tbl INNER JOIN
                      pujalist_tbl ON pujabooking_tbl.pujatype = pujalist_tbl.pujaid order by bookingdate ASC";
        DataTable dt = cls.GetDataTable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}