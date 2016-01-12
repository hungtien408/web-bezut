using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class he_thong_phan_phoi_sub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["pvi"]))
            {
                var oProvince = new Province();
                var dv = oProvince.ProvinceSelectOne(Request.QueryString["pvi"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                lblThanhPho.Text = Server.HtmlDecode(row["ProvinceNameEn"].ToString());

            }
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}