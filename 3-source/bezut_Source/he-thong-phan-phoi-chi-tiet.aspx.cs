using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class he_thong_phan_phoi_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["pvi"]))
            {
                var oProvince = new Province();
                var oDistrict = new District();
                var dv = oProvince.ProvinceSelectOne(Request.QueryString["pvi"]).DefaultView;
                var dv2 = oDistrict.DistrictSelectOne(Request.QueryString["dsi"]).DefaultView;

                lblThanhPhoQuan.Text = dv[0]["ProvinceName"].ToString() + " - " + dv2[0]["DistrictName"].ToString();

            }
        }
    }
}