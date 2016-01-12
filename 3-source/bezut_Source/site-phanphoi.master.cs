using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class site_phanphoi : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSearchPhanPhoi_Click(object sender, EventArgs e)
    {
        if (dropListThanhPho.SelectedValue != null && dropListQuan.SelectedValue != null)
        {
            var oProvince = new Province();
            var oDistrict = new District();
            var dv = oProvince.ProvinceSelectOne(dropListThanhPho.SelectedValue).DefaultView;
            var dv2 = oDistrict.DistrictSelectOne(dropListQuan.SelectedValue).DefaultView;

            Response.Redirect(progressTitle(dv2[0]["DistrictName"].ToString()) + "-pvi-" + dv[0]["ProvinceID"] + "-dsi-" + dv2[0]["DistrictID"] + ".aspx");
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
    protected void btnSendAnswer_Click(object sender, EventArgs e)
    {
        var oComment = new Comment();
        int i = oComment.CommentInsert(txtHoTen.Text.Trim(), "", txtTitle.Text.Trim(), "", "", txtEmail.Text.Trim(), txtNoiDung.Text.Trim(), "", "", "", "", "", "");
        if (i > 0)
        {
            txtTitle.Text = "";
            txtHoTen.Text = "";
            txtEmail.Text = "";
            txtNoiDung.Text = "";
            lblMessage.Text = "Gửi câu hỏi thành công !";
        }
    }
}
