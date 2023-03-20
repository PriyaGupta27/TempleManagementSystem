using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ADM_Default2 : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        string strWhere = string.Empty;
        string sql = "select Donationfor,Donationdate,Name,Mobile,Email,Amount from Donation_tbl where Donationdate between '" + txtsdfrom.Text + "' and '" + txtsdto.Text.Trim() + "'";
        DataTable dt = cls.GetDataTable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   
}