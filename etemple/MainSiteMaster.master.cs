using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class MainSiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LnkStopAudio.Text = "";
            HtmlControl cBuzz = (HtmlControl)panBuzz.FindControl("Buzz");
            cBuzz.Attributes.Add("autoplay", "autoplay");
        }
       
    }
    protected void LnkStopAudio_Click(object sender, EventArgs e)
    {
        if (LnkStopAudio.Text == "")
        {
            HtmlControl cBuzz = (HtmlControl)panBuzz.FindControl("Buzz");
            cBuzz.Attributes.Add("Stop", "Stop");
            LnkStopAudio.Text = "Start Audio";
        }
        else
        {
            LnkStopAudio.Text = "";
            HtmlControl cBuzz = (HtmlControl)panBuzz.FindControl("Buzz");
            cBuzz.Attributes.Add("autoplay", "autoplay");
        }

    }
   
}
