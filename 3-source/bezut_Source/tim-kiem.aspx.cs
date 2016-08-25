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
            HtmlMeta meta = new HtmlMeta();
            hdnKeyword.Value = Session["Keyword"] == null ? "" : Session["Keyword"].ToString();
            if (Request.QueryString["tt"] != null)
            {
                var dv = new Article().ArticleSelectOne(Request.QueryString["tt"]).DefaultView;
                if (dv.Count > 0)
                {
                    lbName.Text = dv[0]["ArticleTitle"].ToString();
                    Page.Title = dv[0]["MetaTittle"].ToString();
                    meta.Content = dv[0]["MetaDescription"].ToString();
                    Header.Controls.Add(meta);
                }
            }
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}