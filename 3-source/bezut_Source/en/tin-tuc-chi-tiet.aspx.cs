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
            if (!string.IsNullOrEmpty(Request.QueryString["tt"]))
            {
                var oArticle = new Article();
                var oArticleCategory = new ArticleCategory();
                var dv = oArticle.ArticleSelectOne(Request.QueryString["tt"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                var dv2 = oArticleCategory.ArticleCategorySelectOne(row["ArticleCategoryID"].ToString()).DefaultView;
                
                strTitle = Server.HtmlDecode(row["ArticleTitleEn"].ToString());
                strDescription = Server.HtmlDecode(row["DescriptionEn"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittleEn"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescriptionEn"].ToString());

                lblTitleNews.Text = dv2[0]["ArticleCategoryNameEn"].ToString();
            }
            else
            {
                strTitle = strMetaTitle = "News";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);
        }
    }
}