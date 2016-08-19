using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class video : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Video";
            var meta = new HtmlMeta() { Name = "description", Content = "Video" };
            Header.Controls.Add(meta);

            if (((DataView)odsVideo.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }
        }
    }
}