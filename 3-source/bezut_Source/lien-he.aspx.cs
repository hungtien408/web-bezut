﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class lien_he : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void sendEmail()
    {
        string msg = "<h3>BEZUT: LIÊN HỆ</h3><br/>";
        msg += "<b>Họ và tên: </b>" + txtHoTen.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Nội dung: </b>" + txtNoiDung.Text.Trim().ToString();
        //Common.SendMail("smtp.gmail.com", 587, "iei@iei.edu.vn", "iei@vnuhcm", "iei@iei.edu.vn", "", "LIÊN HỆ BEZUT", msg, true);
    }
    protected void btGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {

                //send email         
                sendEmail();
                lblMessage.Text = "Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!";
                lblMessage.Visible = true;
                //lblCheckResult.Text = "";
                //
                //Clear text
                //
                txtHoTen.Text = "";
                txtPhone.Text = "";
                txtEmail.Text = "";
                txtNoiDung.Text = "";
            }
            else
            {
                //lblCheckResult.Text = "Chuỗi xác nhận chưa đúng !";
            }
        }
    }
}