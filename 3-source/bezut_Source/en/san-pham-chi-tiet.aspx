﻿<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-product.master" AutoEventWireup="true"
    CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

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
                <li><strong>Cao thường xuân</strong><span>35ml</span></li>                <li><strong>Tinh dầu tràm</strong><span>0.25ml</span></li>                <li><strong>Tinh dầu gừng</strong><span>0.25ml</span></li>                <li><strong>Tinh dầu húng chanh</strong><span>0,25ml</span></li>                <li><strong>Dịch ép quả tắc, đường phèn vừa đủ</strong><span>5ml</span></li>
            </ul>
        </div>
    </div>
    <div class="wrapper-text detail-text">
        <h4>Công dụng</h4>
        <ul class="list-check">
            <li>Giúp bổ phế, long đờm, giảm ho, làm ấm đường hô hấp</li>            <li>Giúp giảm các triệu chứng ho do viêm phế quản, ho do dị ứng, ho khan, ho có đờm</li>            <li>Hỗ trợ giảm nôn, trớ ở trẻ em</li>
        </ul>
        <h4>Đối tượng sử dụng</h4>
        <ul class="list-squate">
            <li>Người lớn, Trẻ em bị ho</li>            <li>Viêm phế quản </li>            <li>Viêm đường hô hấp</li>
        </ul>
        <h4>Hướng dẫn sử dụng</h4>
        <ul class="list-squate">
            <li>Trẻ từ 2 đến 5 tuổi: 2,5 - 5ml/lần, ngày 3 - 4 lần.</li>            <li>Trẻ trên 5 tuổi và người lớn: 5 - 10ml/lần hoặc 1 - 2 gói/lần, ngày 3 - 4 lần.</li>            <li>Trẻ dưới 2 tuổi: Hỏi ý kiến của bác sĩ trước khi sử dụng.</li>
        </ul>
        <h4>Bảo quản</h4>
        <ul class="list-squate">
            <li>Nơi khô ráo thoáng mát tránh ánh nắng chiếu trực tiếp.</li>
        </ul>
        <h4>Thời hạn sử dụng</h4>
        <ul class="list-squate">
            <li>36 tháng kể từ ngày sản xuất. </li>            <li>Ngày sản xuất và hạn sử dụng ghi trên nhãn sản phẩm.</li>
        </ul>
        <h4>Quy cách đóng gói</h4>
        <ul class="list-squate">
            <li>Gói 5ml</li>            <li>Hộp 20 gói</li>            <li>Chai 100ml.</li>
        </ul>
        <p style="color: #9e9e9e; font-style: italic;">( <span style="color: #ff0000;">*</span> Sản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh )</p>
    </div>--%>
    <%--<asp:HiddenField ID="hdnlinkSPD" runat="server" />
    <a class="a-link-spd" href="<%= hdnlinkSPD.Value %>"></a>--%>
    <asp:ListView ID="lstSanPhamDetails" runat="server" DataSourceID="odsSanPhamDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-details">
                <div class="details-content">
                    <h1 class="title">
                        <%# Eval("ProductNameEn") %></h1>
                </div>
            </div>
            <div class="wrapper-text detail-text">
                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
            </div>
            <div class='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "wrap-button hidden" : "wrap-button" %>'>
                <div class="col-w230 w258">
                    <div class="box-in">
                        <%--<asp:Button ID="Button1" CssClass="button-btn btn-b corner" runat="server" Text="Order now!" />--%>
                        <a href="javascript:void(0);" class="button-btn btn-b corner text-center" data-toggle="modal"
                            data-target="#myModal">Order now!</a>
                    </div>
                </div>
                <div class="col-w230 w298">
                    <div class="box-in">
                        <div class="button-btn phone corner">
                            <span>advisory
                                <img src="../assets/images/phone-num.png" alt="091 926 3399" /></span></div>
                    </div>
                </div>
                <div class="col-w230">
                    <div class="box-in">
                        <a class="button-btn btn-a corner" href="he-thong-phan-phoi.aspx"><span>sale point</span></a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsSanPhamDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="headno headpo">
        <h2 class="title">
            Related Products</h2>
    </div>
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
    <asp:ListView ID="lstSanPhamSame" runat="server" DataSourceID="odsSanPhamSame" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                        class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <%# Eval("ProductNameEn") %></a></h3>
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
            <asp:Parameter DefaultValue="4" Name="RerultCount" Type="String" />
            <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi"
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        Enter order information
                    </h4>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="modal-body form-wrap">
                            <h4>
                                Customer Information</h4>
                            <div class="form-input">
                                <label class="form-lb">
                                    Fullname:</label>
                                <div class="form-w">
                                    <asp:TextBox ID="txtFullName" CssClass="form-text" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                        Display="Dynamic" ValidationGroup="SendInfo" ControlToValidate="txtFullName"
                                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    Cell phone:</label>
                                <div class="form-w">
                                    <asp:TextBox ID="txtPhone" CssClass="form-text" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                        Display="Dynamic" ValidationGroup="SendInfo" ControlToValidate="txtPhone" ErrorMessage="Information required!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    Email:</label>
                                <div class="form-w">
                                    <asp:TextBox ID="txtEmail" CssClass="form-text" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                        runat="server" ValidationGroup="SendInfo" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                        ValidationGroup="SendInfo" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    Quantity:</label>
                                <div class="form-w">
                                    <asp:TextBox ID="txtQuantity" CssClass="form-text" runat="server" AutoPostBack="True"
                                        OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                        ValidationGroup="SendInfo" ControlToValidate="txtQuantity" ErrorMessage="Information required!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    Price online:</label>
                                <div class="form-w">
                                    <asp:FormView ID="FormView1" runat="server" DataSourceID="odsSanPhamChiTiet">
                                        <ItemTemplate>
                                            <label class="form-content">
                                                <%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') %>
                                                VNĐ</label>
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:ObjectDataSource ID="odsSanPhamChiTiet" runat="server" SelectMethod="ProductSelectOne"
                                        TypeName="TLLib.Product">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    Total:</label>
                                <div class="form-w">
                                    <label class="form-content">
                                        <asp:Label ID="lblThanhTien" runat="server" Text="0"></asp:Label>
                                        VNĐ</label>
                                </div>
                            </div>
                            <h4 class="mt20">
                                Shipping address
                            </h4>
                            <div class="form-input">
                                <label class="form-lb">
                                    Province/City:</label>
                                <div class="form-w">
                                    <asp:DropDownList ID="dropTinhThanh" CssClass="selectb" runat="server" DataSourceID="odsTinhThanh"
                                        DataTextField="ProvinceNameEn" DataValueField="ProvinceID" AutoPostBack="True">
                                        <asp:ListItem>Tiền Giang</asp:ListItem>
                                        <asp:ListItem>Long An</asp:ListItem>
                                        <asp:ListItem>Bến Tre</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="odsTinhThanh" runat="server" SelectMethod="ProvinceSelectAll"
                                        TypeName="TLLib.Province">
                                        <SelectParameters>
                                            <asp:Parameter Name="ProvinceID" Type="String" />
                                            <asp:Parameter Name="ProvinceName" Type="String" />
                                            <asp:Parameter Name="ShortName" Type="String" />
                                            <asp:Parameter Name="CountryID" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="form-input">
                                <label class="form-lb">
                                    County/District:</label>
                                <div class="form-w">
                                    <asp:DropDownList ID="dropListQuan" CssClass="selectb" runat="server" DataSourceID="odsQuan"
                                        DataTextField="DistrictName" DataValueField="DistrictID" AutoPostBack="True">
                                        <asp:ListItem>Quận/Huyện</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="odsQuan" runat="server" SelectMethod="DistrictSelectAll"
                                        TypeName="TLLib.District">
                                        <SelectParameters>
                                            <asp:Parameter Name="DistrictName" Type="String" />
                                            <asp:ControlParameter ControlID="dropTinhThanh" Name="ProvinceIDs" PropertyName="SelectedValue"
                                                Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <%--<div class="form-input">
                    <label class="form-lb">Đường/Phố:</label>
                    <div class="form-w">
                        <asp:TextBox ID="TextBox5" CssClass="form-text" runat="server"></asp:TextBox>
                    </div>
                </div>--%>
                            <div class="form-input">
                                <label class="form-lb">
                                    Address:</label>
                                <div class="form-w">
                                    <asp:TextBox ID="txtAddress" CssClass="form-text" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                                        ValidationGroup="SendInfo" ControlToValidate="txtAddress" ErrorMessage="Information required!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="modal-footer">
                    <asp:Button ID="btnGui" CssClass="btn btn-primary btn-form" runat="server" Text="Send"
                        OnClick="btnGui_Click" ValidationGroup="SendInfo" />
                    <asp:Button ID="btnHuy" CssClass="btn btn-primary btn-form" runat="server" Text="Cancel"
                        OnClick="btnHuy_Click" ValidationGroup="Huy" />
                </div>
            </div>
        </div>
    </div>
    <!-- Modal access full-->
    <a href="javascript:void(0);" class="btn-trigger hidden" data-toggle="modal" data-target="#popupAcc">
        link-a</a>
    <div class="modal fade popup-text popup-form" id="popupAcc" tabindex="-1" role="dialog" aria-labelledby="myModalLabelacc">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelacc">
                        Title</h4>
                </div>
                <div class="modal-body">
                    <div class="content-text">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
