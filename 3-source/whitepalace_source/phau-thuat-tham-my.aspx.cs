﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class phau_thuat_tham_my : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Phẩu Thuật Thẩm Mỹ";
        var meta = new HtmlMeta() { Name = "description", Content = "Phẩu Thuật Thẩm Mỹ" };
        Header.Controls.Add(meta);
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}