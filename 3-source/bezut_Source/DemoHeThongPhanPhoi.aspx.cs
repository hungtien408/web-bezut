using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DemoLichTiemPhong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //dropListThanhPho.SelectedIndex = -1;
            //dropListQuan.SelectedIndex = -1;
            dropListThanhPho.ClearSelection();
        }
    }
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        //Response.Redirect("tim-kiem.aspx?kw=" + searchTextBox.Text.Trim());
        Response.Redirect("DemoHeThongPhanPhoi.aspx?tp=" + dropListThanhPho.SelectedValue + "&dis=" + dropListQuan.Text.Trim());
    }
}