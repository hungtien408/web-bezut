using System;
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
        string msg = "<h3>BEZUT: CONTACT US</h3><br/>";
        msg += "<b>Fullname: </b>" + txtHoTen.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Phone: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Content: </b>" + txtNoiDung.Text.Trim().ToString();
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
                lblMessage.Text = "Thank you for contacting us. Your notice has been sent. We will contact you as soon as possible!";
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