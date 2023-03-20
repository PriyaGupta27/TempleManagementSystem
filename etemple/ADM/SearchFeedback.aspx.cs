using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADM_SearchFeedback : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        string strwhere = string.Empty;
        string sql = "select feedbackDate, Name, Mobile, Email, Remarks from feedback_tbl  where feedbackDate between '" + txtfeedfrom.Text + "' and '" + txtfeedto.Text.Trim() + "'";
        DataTable dt = cls.GetDataTable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   
}