﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tin_tuc_sub : System.Web.UI.Page
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
            if (!string.IsNullOrEmpty(Request.QueryString["tri"]))
            {
                //var oArticle = new Article();
                var oArticleCategory = new ArticleCategory();
                var dv = oArticleCategory.ArticleCategorySelectOne(Request.QueryString["tri"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ArticleCategoryNameEn"].ToString());
                strDescription = Server.HtmlDecode(row["DescriptionEn"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTitleEn"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescriptionEn"].ToString());

                
            }
            else
            {
                strTitle = strMetaTitle = "Info Website";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            lblCategory.Text = strTitle;
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}