using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class hinh_anh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsImageCSVC.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            if (((DataView)odsImageKH.Select()).Count <= DataPager1.PageSize)
            {
                DataPager2.Visible = false;
            }

            if (((DataView)odsVideo.Select()).Count <= DataPager1.PageSize)
            {
                DataPager3.Visible = false;
            }

            Page.Title = "Hình Ảnh";
            var meta = new HtmlMeta() {Name = "description", Content = "Hình Ảnh"};
            Header.Controls.Add(meta);
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}