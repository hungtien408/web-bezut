using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tin_tuc_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["ni"]))
            {
                var oProduct = new Product();
                var oProductCategory = new ProductCategory();
                var dv = oProduct.ProductSelectOne(Request.QueryString["ni"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                var dv2 = oProductCategory.ProductCategorySelectOne(row["CategoryID"].ToString()).DefaultView;
                
                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                lblTitleProduct.Text = dv2[0]["ProductCategoryName"].ToString();
            }
            else
            {
                strTitle = strMetaTitle = "Nghiên Cứu Phát Triển";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);
        }
    }
}