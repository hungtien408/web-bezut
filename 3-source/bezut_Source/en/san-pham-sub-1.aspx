<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-product.master" AutoEventWireup="true"
    CodeFile="san-pham-sub-1.aspx.cs" Inherits="san_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="bannerSub">
        <div class="slider-wrapper">
            <%--<div id="slider" class="nivoSlider">
                <img src="../assets/images/banner-img-1.jpg" alt=""/>
                <img src="../assets/images/banner-img-2.jpg" alt=""/>
                <img src="../assets/images/banner-img-3.jpg" alt=""/>
                <img src="../assets/images/banner-img-4.jpg" alt=""/>
                <img src="../assets/images/banner-img-5.jpg" alt=""/>
            </div>--%>
            <asp:ListView ID="lstBannerProduct" runat="server" DataSourceID="odsBannerProduct"
                EnableModelValidation="True">
                <ItemTemplate>
                    <img alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner-img-1.jpg" %>'
                        runat="server" />
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="slider" class="nivoSlider">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBannerProduct" runat="server" SelectMethod="AdsBannerSelectAll"
                TypeName="TLLib.AdsBanner">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter DefaultValue="" Name="Website" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <%--<div class="head-la">
        <h2 class="title text-uppercase">
            sản phẩm</h2>
                    <div class="h-link"><a href="#">Nghiên cứu phát triển</a></div>
    </div>--%>
    <asp:ListView ID="lstDanhMucTitle" runat="server" DataSourceID="odsDanhMucTitle"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="head-la">
                <h2 class="title text-uppercase">
                    products</h2>
                <div class="h-link">
                    <a href='<%# !string.IsNullOrEmpty(Eval("ProductCategoryLink").ToString()) ? Eval("ProductCategoryLink") : progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>'>
                        <%# Eval("ProductCategoryNameEn") %></a></div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsDanhMucTitle" runat="server" SelectMethod="ProductCategorySelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsTitle" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <%--<div class="wrap-section line-bottom pro-site">
            <div class="product-tb pro-tb row">
                <div class="col-xs-4 element-item">
                    <div class="product-box">
                        <a href="#" class="product-img"><img src="assets/images/news-img-1.jpg" alt=""/></a>
                        <div class="product-content">
                            <h3 class="product-name"><a href="#">Siro ho Bezut</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 element-item">
                    <div class="product-box">
                        <a href="#" class="product-img"><img src="assets/images/news-img-1.jpg" alt=""/></a>
                        <div class="product-content">
                            <h3 class="product-name"><a href="#">Siro ho Bezut</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 element-item">
                    <div class="product-box">
                        <a href="#" class="product-img"><img src="assets/images/news-img-1.jpg" alt=""/></a>
                        <div class="product-content">
                            <h3 class="product-name"><a href="#">Viên ngậm ho bezut</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <asp:ListView ID="lstDanhMucSanPham" runat="server" DataSourceID="odsDanhMucSanPham"
        EnableModelValidation="True">
        <ItemTemplate>
            <%--<div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">
                                <%# Eval("ProductCategoryName") %></a></h3>
                    </div>
                </div>
            </div>--%>
            <div class="col-xs-6 element-item">
                <div class="product-box">
                    <a href='<%# !string.IsNullOrEmpty(Eval("ProductCategoryLink").ToString()) ? Eval("ProductCategoryLink") : progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>' class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href='<%# !string.IsNullOrEmpty(Eval("ProductCategoryLink").ToString()) ? Eval("ProductCategoryLink") : progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                <%# Eval("ProductCategoryNameEn") %></a></h3>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="wrap-section line-bottom pro-site">
                <div class="product-tb pro-tb row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsDanhMucSanPham" runat="server" SelectMethod="ProductCategorySelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsTitle" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="wrap-section">
        <%--<div class="product-tb row isotopelist">
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="#" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
        </div>--%>
        <asp:ListView ID="lstSanPham" runat="server" DataSourceID="odsSanPham" EnableModelValidation="True">
            <ItemTemplate>
                <div class="col-xs-4 element-item">
                    <div class="product-box">
                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>' class="product-img">
                            <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                                runat="server" /></a>
                        <div class="product-content">
                            <h3 class="product-name">
                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                    <%# Eval("ProductNameEn") %></a></h3>
                            <div class="description">
                                <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 160) %></div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="product-tb row isotopelist">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsSanPham" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:QueryStringParameter QueryStringField="pri" Name="CategoryID" Type="String" />
                <asp:Parameter Name="ManufacturerID" Type="String" />
                <asp:Parameter Name="OriginID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="InStock" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="IsBestSeller" Type="String" />
                <asp:Parameter Name="IsSaleOff" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
