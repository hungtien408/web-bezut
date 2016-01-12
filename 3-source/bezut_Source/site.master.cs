using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using TLLib;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.RawUrl;

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("-pi-"))
                activePage = "san-pham.aspx";
            else if (page.Contains("-tci-"))
                activePage = "tin-tuc.aspx";
            else if (page.Contains("-dti-"))
                activePage = "dieu-tri-ho.aspx";
            else if (page.Contains("-kci-"))
                activePage = "kien-thuc-benh-hoc.aspx";
            else if (page.Contains("-tv-"))
                activePage = "tu-van.aspx";
            else if (page.Contains("-pvi-"))
                activePage = "he-thong-phan-phoi.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}
