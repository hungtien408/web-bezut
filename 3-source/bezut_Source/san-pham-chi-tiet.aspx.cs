using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class san_pham_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (((DataView)odsTinTuc.Select()).Count <= DataPager1.PageSize)
            //{
            //    DataPager1.Visible = false;
            //}

            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["pi"]))
            {
                var oProduct = new Product();
                var oProductCategory = new ProductCategory();
                var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                //lblPrice.Text = !string.IsNullOrEmpty(row["Price"].ToString())
                //    ? (string.Format("{0:##,###.##}", row["Price"]).Replace('.', '*').Replace(',', '.').Replace('*', ',')
                //        )
                //    : "0";
            }
            else
            {
                strTitle = strMetaTitle = "Sản Phẩm";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        var oProduct = new Product();
        var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;
        lblThanhTien.Text = string.Format("{0:##,###.##}", Convert.ToDecimal(dv[0]["Price"].ToString()) * Convert.ToDecimal(txtQuantity.Text)).Replace('.', '*').Replace(',', '.').Replace('*', ',');
            
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            var oOrders = new Orders();
            var oOrderDetail = new OrderDetail();
            var oAddressBook = new AddressBook();
            var oProduct = new Product();
            var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;
            var OrderNumber = DateTime.Now.ToString("ddMMyy") + Guid.NewGuid().GetHashCode().ToString("X").Substring(0, 4);

            oAddressBook.AddressBookInsert(txtFullName.Text.ToString(),
                                                        "",
                                                        txtEmail.Text.ToString(),
                                                        txtPhone.Text.ToString(),
                                                        txtPhone.Text.ToString(),
                                                        "",
                                                        txtEmail.Text,
                                                        "",
                                                        txtAddress.Text.ToString(),
                                                        "", "", "", "1", dropTinhThanh.SelectedValue.ToString(), dropListQuan.SelectedValue.ToString(), "", "", "", "");
            oOrders.OrdersInsert(
                           OrderNumber,
                           txtEmail.Text,
                           "1",
                           "1",
                           "email",
                           "1",
                           oAddressBook.AddressBookSelectIdentCurrent().ToString(),
                           "",
                           "",
                           "1",
                           "",
                           txtAddress.Text,
                           "1"
                           );

            oOrderDetail.OrderDetailInsert(
                               OrderNumber,
                               Request.QueryString["pi"],
                               txtQuantity.Text,
                               dv[0]["Price"].ToString(),
                               txtEmail.Text,
                               "",
                               ""
                            );
            string Body = "<div style='width: 100%; font-size: 14px; font-family: Arial;'>";
            //Body += "<h3 style='color: rgb(204,102,0); font-size: 22px; border-bottom-color: gray; border-bottom-width: 1px;border-bottom-style: dashed; margin-bottom: 20px; font-family: Times New Roman;'>";
            //Body += "Cảm ơn bạn đã đăng ký tham gia English Camp 2015";
            //Body += "</h3>";
            Body += "<p>Họ và tên: " + txtFullName.Text + "</p>";
            Body += "<p>Email: " + txtEmail.Text + "</p>";
            Body += "<p>Điện thoại: " + txtPhone.Text + "</p>";
            //Common.SendMail("smtp.gmail.com", 587, "iei@iei.edu.vn", "iei@vnuhcm", "", "", "XÁC NHẬN ĐĂNG KÝ THAM GIA ENGLISH CAMP 2015", Body, true);

            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {myaccessfull('popupAcc', 'Thông Tin Đặt Hàng', 'Chúc mừng bạn đã đặt hàng thành công !');});", true);

            txtFullName.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtQuantity.Text = "";
            txtAddress.Text = "";
            lblThanhTien.Text = "0";
            dropTinhThanh.SelectedIndex = 0;
            dropListQuan.SelectedIndex = 0;
        }
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtQuantity.Text = "";
        txtAddress.Text = "";
        lblThanhTien.Text = "0";
        dropTinhThanh.SelectedIndex = 0;
        dropListQuan.SelectedIndex = 0;
    }
}