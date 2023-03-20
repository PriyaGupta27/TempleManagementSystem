using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Child_Admin_AddVIdeo : System.Web.UI.Page
{
    #region pageload
        clsDataAccess cls = new  clsDataAccess ();
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
    #endregion

    #region uploadimage
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sql = "";
        int i = 0;
        sql = "select * from Videodisplay where FileUrl='" + txt_VideoLink.Text + "' Order by id desc";
        DataTable dt =cls.GetDataTable(sql);
        if (btnSubmit.Text == "Submit")
        {
            if (dt.Rows.Count == 0)
            {
                try
                {
                    if(chkBxVdoLnk.SelectedIndex==0)
                        sql = "insert into Videodisplay(FileName,FileUrl,Otherdesc,Date,VideoLink)  values (N'" + txt_VideoTitle.Text + "',N'" + txt_VideoLink.Text + "',N'" + txtEventname.Text + "', " + cls.date() + ",1)";
                    else
                        if (chkBxVdoLnk.SelectedIndex == 1)
                        {
                            string ImagePath = ".." + GetImagePath();
                            sql = "insert into Videodisplay(FileName,FileUrl,Otherdesc,Date,VideoLink)  values (N'" + txt_VideoTitle.Text + "',N'" + ImagePath + "',N'" + txtEventname.Text + "', " + cls.date() + ",0)";
                        }
                    i = cls.ExecuteSql(sql); BindImage(); Alert("Inserted Successfully"); txt_VideoTitle.Text = ""; txtEventname.Text = ""; txt_VideoLink.Text = "";
                }
                catch { }
                finally
                { }
                if (i == 0) { return; }
            }
            else
            {
                Alert("Video is added with this url link.");
            }
        }
        else if (btnSubmit.Text == "Update")
        {
            if (dt.Rows.Count == 0 || filurl == txt_VideoLink.Text.Trim())
            {
                try
                {
                    if (chkBxVdoLnk.SelectedIndex == 0)
                        sql = "Update Videodisplay set FileName=N'" + txt_VideoTitle.Text + "',FileUrl=N'" + txt_VideoLink.Text + "',Otherdesc=N'" + txtEventname.Text + "',Date=" + cls.date() + ",VideoLink=1 where ID=" + id + "";

                    else
                        if (chkBxVdoLnk.SelectedIndex == 1)
                        {
                            string ImagePath = ".." + GetImagePath();
                            if(ImagePath!="..")
                                sql = "Update Videodisplay set FileName=N'" + txt_VideoTitle.Text + "',FileUrl=N'" + ImagePath + "',Otherdesc=N'" + txtEventname.Text + "',Date=" + cls.date() + ",VideoLink=0 where ID=" + id + "";
                            else if(ImagePath=="..")
                                sql = "Update Videodisplay set FileName=N'" + txt_VideoTitle.Text + "',Otherdesc=N'" + txtEventname.Text + "',Date=" + cls.date() + ",VideoLink=0 where ID=" + id + "";

                        }
                    i = cls.ExecuteSql(sql); BindImage(); Alert("Updated Successfully"); txt_VideoTitle.Text = ""; txtEventname.Text = ""; txt_VideoLink.Text = ""; chkBxVdoLnk.ClearSelection();
                    btnSubmit.Text = "Submit";
                }
                catch { }
                finally
                { }
                if (i == 0) { return; }
            }
            else
            {
                Alert("Video is added with this url link.");
            }
        }
    }
    public string GetImagePath()
    {
        string Path = cls.UploadVideo(FileUpload1, "/UploadedVideo/");
        return Path;
    }

    public void Alert(string Message)
    {
        lbl_msg.Text = Message;
        cls.Alert();
    }

    #endregion
    protected void rpImage_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            HiddenField hdID = (HiddenField)e.Item.FindControl("hdId");
            string sql = "delete from Videodisplay where id='" + hdID.Value + "'";
            int i = cls.ExecuteSql(sql); BindImage();
        }
        if (e.CommandName == "Edit")
        {
            HiddenField hdID = (HiddenField)e.Item.FindControl("hdId");
            Label lblID = (Label)e.Item.FindControl("lbl_Position_id");
            Literal litID = (Literal)e.Item.FindControl("Literal5");
            HtmlGenericControl frmId = (HtmlGenericControl)e.Item.FindControl("ifvideo");
            HiddenField hdSrc = (HiddenField)e.Item.FindControl("hdSrc");
            HiddenField hdIsVdoLnk = (HiddenField)e.Item.FindControl("hdIsVdoLnk");

            if (hdIsVdoLnk.Value == "True")
            {
                pnlVideoLnk.Visible = true;
                pnlFileUpld.Visible = false;
                chkBxVdoLnk.SelectedIndex = 0;
                txt_VideoLink.Text = hdSrc.Value.Trim();
                filurl = hdSrc.Value.Trim();
            }
            else
            {
                pnlFileUpld.Visible = true;
                pnlVideoLnk.Visible = false;
                chkBxVdoLnk.SelectedIndex = 1;
                txt_VideoLink.Text = "";
                filurl = "";
            }
            id = int.Parse(hdID.Value.Trim());
            txt_VideoTitle.Text = lblID.Text.Trim();
            txtEventname.Text = litID.Text.Trim();            
            btnSubmit.Text = "Update";
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
                    var Literal1 = (Literal)e.Item.FindControl("Literal1");
                    src = dt.Rows[e.Item.ItemIndex]["FileUrl"].ToString();              
                    var vid = (HtmlGenericControl)e.Item.FindControl("video");
                    vid.Attributes.Add("src", src);                   
                }
        }
    }

    protected void chkBxVdoLnk_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedColors = string.Empty;

        if (chkBxVdoLnk.SelectedIndex == 0 && prevSel != "Video Link")
        {
            pnlVideoLnk.Visible = true;
            pnlFileUpld.Visible = false;
            chkBxVdoLnk.ClearSelection();
            selectedColors = "Video Link";
            foreach (ListItem item in chkBxVdoLnk.Items)
            {
                if (selectedColors.Contains(item.Text.Trim()))
                {
                    item.Selected = true;
                    prevSel = "Video Link";
                }
            }
        }
        else
        {
            pnlFileUpld.Visible = true;
            pnlVideoLnk.Visible = false;
            chkBxVdoLnk.ClearSelection();
            selectedColors = "File Upload";
            foreach (ListItem item in chkBxVdoLnk.Items)
            {
                if (selectedColors.Contains(item.Text.Trim()))
                {
                    item.Selected = true;
                    prevSel = "File Upload";
                }
            }
        }
    }
}