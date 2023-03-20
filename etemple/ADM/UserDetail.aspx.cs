using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserDetail : System.Web.UI.Page
{
    clsDataAccess cls=new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        string strWhere = string.Empty;
        string sql = "select Name,Emailid,Contactno,Gender,Address,Date from tbl_registration";
        DataTable dt = cls.GetDataTable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}