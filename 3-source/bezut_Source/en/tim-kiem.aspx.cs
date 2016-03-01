using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class tin_tuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsTinTuc.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["tt"]))
            {
                var oArticle = new Article();
                var oArticleCategory = new ArticleCategory();
                var dv = oArticle.ArticleSelectOne(Request.QueryString["tt"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ArticleTitleEn"].ToString());
                strDescription = Server.HtmlDecode(row["DescriptionEn"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittleEn"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescriptionEn"].ToString());
            }
            else
            {
                strTitle = strMetaTitle = "Search";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            //var dv2 = (DataView)odsTinTucNoiBat.Select();
            //hdnArticleID.Value = dv2[0]["ArticleID"].ToString();
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}