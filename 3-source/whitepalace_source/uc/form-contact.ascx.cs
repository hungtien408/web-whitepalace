﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class uc_form_contact : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void sendEmail()
    {
        string msg = "<h3>WHITE PALACE: CONTACT</h3><br/>";
        msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Nội dung: </b>" + txtNoiDung.Text.Trim().ToString();
        Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "cc@tranlegroup.com", "", "Contact WHITE PALACE", msg, true);
    }
    protected void btGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //if (RadCaptcha1.IsValid)
            //{

            sendEmail();
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
            //lblMessage.Text = "Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!";
            //lblMessage.Visible = true;
            //lblMessage.Text = "";
            //
            //Clear text
            //
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtNoiDung.Text = "";
            //}
            //else
            //{
            //    lblMessage.Text = "Chuỗi xác nhận chưa đúng !";
            //}
        }
    }
}