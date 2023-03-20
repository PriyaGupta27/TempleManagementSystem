using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
public partial class PlayVideo : System.Web.UI.Page
{
    clsDataAccess cls = new clsDataAccess ();
    static DataTable dt = null;
    string src = string.Empty;
    static string filurl = string.Empty;
    String newStr = String.Empty;
    static Int32 id = 0;
    static string prevSel = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindImage();
        }
    }
    private void BindImage()
    {
        string sql = "select * from Videodisplay Order by id";
        dt =cls.GetDataTable(sql);
        if (dt.Rows.Count != 0)
        {
            rpImage.DataSource = dt;
            rpImage.DataBind();
        }
    }
    
    protected void rpImage_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (dt.Rows[e.Item.ItemIndex]["VideoLink"].ToString() == "True")
            {
                var pnlRptrVdoLnk = (Panel)e.Item.FindControl("pnlRptrVdoLnk");
                pnlRptrVdoLnk.Visible = true;
                var pnlRptrVdoUpld = (Panel)e.Item.FindControl("pnlRptrVdoUpld");
                pnlRptrVdoUpld.Visible = false;
                var framevid = (HtmlGenericControl)e.Item.FindControl("ifvideo");
                src = dt.Rows[e.Item.ItemIndex]["FileUrl"].ToString();
                if (src.Contains("watch"))
                {
                    int pos = src.IndexOf("watch?v=");
                    newStr = src.Remove(pos, 8);
                    src = newStr.Insert(pos, "embed/");
                }
                framevid.Attributes["src"] = src;
            }
            else
                if (dt.Rows[e.Item.ItemIndex]["VideoLink"].ToString() == "False")
                {
                    var pnlRptrVdoUpld = (Panel)e.Item.FindControl("pnlRptrVdoUpld");
                    pnlRptrVdoUpld.Visible = true;
                    var pnlRptrVdoLnk = (Panel)e.Item.FindControl("pnlRptrVdoLnk");
                    pnlRptrVdoLnk.Visible = false;
                    src = dt.Rows[e.Item.ItemIndex]["FileUrl"].ToString();
                    src = src.Replace("../", "../Disability/");
                    var vid = (HtmlGenericControl)e.Item.FindControl("video");
                    vid.Attributes.Add("src", src);
                }
        }
    }
}