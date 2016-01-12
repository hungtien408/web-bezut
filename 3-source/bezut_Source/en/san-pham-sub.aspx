<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-product.master" AutoEventWireup="true"
    CodeFile="san-pham-sub.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="wrapper-details">
        <div class="details-img"><img src="assets/images/product-d-1.jpg" alt=""/></div>
        <div class="details-content">
            <h1 class="title">Siro Ho Bezut</h1>
            <h4 class="title-2"><span>Thành phần</span></h4>
            <ul class="list-nav">
                <li><strong>Cao thường xuân</strong><span>35ml</span></li>
                <li><strong>Tinh dầu tràm</strong><span>0.25ml</span></li>
                <li><strong>Tinh dầu gừng</strong><span>0.25ml</span></li>
                <li><strong>Tinh dầu húng chanh</strong><span>0,25ml</span></li>
                <li><strong>Dịch ép quả tắc, đường phèn vừa đủ</strong><span>5ml</span></li>
            </ul>
        </div>
    </div>
    <div class="wrapper-text detail-text">
        <h4>Công dụng</h4>
        <ul class="list-check">
            <li>Giúp bổ phế, long đờm, giảm ho, làm ấm đường hô hấp</li>
            <li>Giúp giảm các triệu chứng ho do viêm phế quản, ho do dị ứng, ho khan, ho có đờm</li>
            <li>Hỗ trợ giảm nôn, trớ ở trẻ em</li>
        </ul>
        <h4>Đối tượng sử dụng</h4>
        <ul class="list-squate">
            <li>Người lớn, Trẻ em bị ho</li>
            <li>Viêm phế quản </li>
            <li>Viêm đường hô hấp</li>
        </ul>
        <h4>Hướng dẫn sử dụng</h4>
        <ul class="list-squate">
            <li>Trẻ từ 2 đến 5 tuổi: 2,5 - 5ml/lần, ngày 3 - 4 lần.</li>
            <li>Trẻ trên 5 tuổi và người lớn: 5 - 10ml/lần hoặc 1 - 2 gói/lần, ngày 3 - 4 lần.</li>
            <li>Trẻ dưới 2 tuổi: Hỏi ý kiến của bác sĩ trước khi sử dụng.</li>
        </ul>
        <h4>Bảo quản</h4>
        <ul class="list-squate">
            <li>Nơi khô ráo thoáng mát tránh ánh nắng chiếu trực tiếp.</li>
        </ul>
        <h4>Thời hạn sử dụng</h4>
        <ul class="list-squate">
            <li>36 tháng kể từ ngày sản xuất. </li>
            <li>Ngày sản xuất và hạn sử dụng ghi trên nhãn sản phẩm.</li>
        </ul>
        <h4>Quy cách đóng gói</h4>
        <ul class="list-squate">
            <li>Gói 5ml</li>
            <li>Hộp 20 gói</li>
            <li>Chai 100ml.</li>
        </ul>
        <p style="color: #9e9e9e; font-style: italic;">( <span style="color: #ff0000;">*</span> Sản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh )</p>
    </div>--%>
    <asp:ListView ID="lstSanPhamDetails" runat="server" DataSourceID="odsSanPhamDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-details">
                <div class="details-content">
                    <h1 class="title">
                        <%# Eval("ProductCategoryNameEn") %></h1>
                </div>
            </div>
            <div class="wrapper-text detail-text">
                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsSanPhamDetails" runat="server" SelectMethod="ProductCategorySelectOne"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductCategoryID" QueryStringField="pri" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="wrap-button">
        <div class="col-w230 w258">
            <div class="box-in">
                <%--<asp:Button ID="Button1" CssClass="button-btn btn-b corner" runat="server" Text="Đặt hàng ngay!" />--%>
                <a href="javascript:void(0);" class="button-btn btn-b corner text-center" data-toggle="modal" data-target="#myModal">Đặt hàng ngay!</a>
            </div>
        </div>
        <div class="col-w230 w298">
            <div class="box-in">
                <div class="button-btn phone corner">
                    <span>tư vấn
                        <img src="../assets/images/phone-num.png" alt="091 926 3399" /></span></div>
            </div>
        </div>
        <div class="col-w230">
            <div class="box-in">
                <a class="button-btn btn-a corner" href="he-thong-phan-phoi.aspx"><span>điểm bán</span></a>
            </div>
        </div>
    </div>
    <%--<div class="headno headpo">
        <h2 class="title">
            Sản phẩm liên quan</h2>
    </div>--%>
    <%--<div class="wrap-section prom">
        <div class="product-tb pro-tb row">
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">Siro ho Bezut</a></h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">Siro ho Bezut</a></h3>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">Siro ho Bezut</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%--<asp:ListView ID="lstSanPhamSame" runat="server" DataSourceID="odsSanPhamSame" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                        class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <%# Eval("ProductName") %></a></h3>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="wrap-section prom">
                <div class="product-tb pro-tb row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsSanPhamSame" runat="server" SelectMethod="ProductSameSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="RerultCount" Type="String" />
            <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi"
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>--%>
    <div class="wrapper-comment">
        <%--<img src="assets/images/comment-i.jpg" alt="" />--%>
        <div class="fb-comments" data-href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/", System.StringComparison.Ordinal) + 1) %>'
            data-width="675" data-numposts="5" data-colorscheme="light">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
    <!-- Modal -->
    <div class="modal fade popup-form" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-480" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Nhập thông tin đặt hàng </h4>
          </div>
          <div class="modal-body form-wrap">
                <h4>Thông tin khách hàng</h4>
                <div class="form-input">
                    <label class="form-lb">Họ và tên:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox1" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">ĐT di động:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox2" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Email:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox3" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Số lượng:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox4" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Giá bán online:</label>
                    <div class="form-w">
                        <label class="form-content">290.000 VNĐ</label>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Thành Tiền:</label>
                    <div class="form-w">
                        <label class="form-content">0 VNĐ</label>
                    </div>
                </div>
                <h4 class="mt20">Địa chỉ nhận hàng</h4>
                <div class="form-input">
                    <label class="form-lb">Tỉnh/Thành:</label>
                    <div class="form-w">
                        <asp:DropDownList ID="DropDownList1" CssClass="selectb" runat="server">
                            <asp:ListItem>Tiền Giang</asp:ListItem>
                            <asp:ListItem>Long An</asp:ListItem>
                            <asp:ListItem>Bến Tre</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Quận/Huyện:</label>
                    <div class="form-w">
                        <asp:DropDownList ID="DropDownList2" CssClass="selectb" runat="server">
                            <asp:ListItem>Tiền Giang</asp:ListItem>
                            <asp:ListItem>Long An</asp:ListItem>
                            <asp:ListItem>Bến Tre</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Đường/Phố:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox5" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Địachỉ:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox8" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>
          </div>
          <div class="modal-footer">
              <asp:Button ID="Button1" CssClass="btn btn-primary btn-form" runat="server" Text="Gửi" />
              <asp:Button ID="Button2" CssClass="btn btn-primary btn-form" runat="server" Text="Huỷ" />
          </div>
        </div>
      </div>
    </div>
    <!-- Modal access full-->
    <a href="javascript:void(0);" class="btn-trigger hidden" data-toggle="modal" data-target="#popupAcc">link-a</a>
    <div class="modal fade popup-text" id="popupAcc" tabindex="-1" role="dialog" aria-labelledby="myModalLabelacc">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabelacc">Title</h4>
          </div>
          <div class="modal-body">
                <div class="content-text"></div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
