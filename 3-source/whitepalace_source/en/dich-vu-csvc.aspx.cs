using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class dich_vu_csvc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsImageCSVC.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            Page.Title = "Dịch Vụ Cơ Sở Vật Chất";
            var meta = new HtmlMeta() { Name = "description", Content = "Dịch Vụ Cơ Sở Vật Chất" };
            Header.Controls.Add(meta);
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}