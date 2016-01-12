<%@ Page Title="" Language="C#" MasterPageFile="~/site-product.master" AutoEventWireup="true"
    CodeFile="nghien-cuu-phat-trien.aspx.cs" Inherits="nghien_cuu_phat_trien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>BEZUT </title>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headno nob">
        <h1 class="title text-uppercase">
            nghiên cứu phát triển</h1>
    </div>
    <%--<div class="news-big line-bottom mpb10">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img"><img src="assets/images/news-img-1.jpg" alt=""/></a>
        <div class="news-content">
            <h3 class="news-name"><a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</a></h3>
            <div class="description">Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước</div>
            <div class="more-details"><a href="tin-tuc-chi-tiet.aspx">Xem chi tiết</a></div>
        </div>
    </div>--%>
    <asp:ListView ID="lstNghienCuuPhatTrienNoiBat" runat="server" DataSourceID="odsNghienCuuPhatTrienNoiBat"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-big line-bottom mpb10">
                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-ni-" + Eval("ProductID") + ".aspx" %>'
                    class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                        runat="server" /></a>
                <div class="news-content">
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-ni-" + Eval("ProductID") + ".aspx" %>'>
                            <%# Eval("ProductName") %></a></h3>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 260) %></div>
                    <div class="more-details">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-ni-" + Eval("ProductID") + ".aspx" %>'>
                            Xem chi tiết</a></div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsNghienCuuPhatTrienNoiBat" runat="server" SelectMethod="ProductSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="PriceFrom" Type="String" />
            <asp:Parameter Name="PriceTo" Type="String" />
            <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
            <asp:Parameter Name="ManufacturerID" Type="String" />
            <asp:Parameter Name="OriginID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="InStock" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
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
    <%--<div class="wrap-section pro-site">
        <div class="product-tb row">
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ListView ID="lstNghienCuuPhatTrien" runat="server" DataSourceID="odsNghienCuuPhatTrien"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="col-xs-4 element-item">
                        <div class="product-box">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-ni-" + Eval("ProductID") + ".aspx" %>' class="product-img">
                                <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                        runat="server" /></a>
                            <div class="product-content">
                                <h3 class="product-name">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-ni-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></h3>
                                <div class="description">
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 160) %></div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <div class="wrap-section pro-site">
                        <div class="product-tb row">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNghienCuuPhatTrien" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
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
            <div id="pagerp" class="pager">
                <%--<a class="first" href="#">first</a> <a class="prev" href="#">prev</a> <a class="current"
            href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
        <a class="next" href="#">next</a> <a class="last" href="#">last</a>--%>
                <asp:DataPager ID="DataPager1" runat="server" PageSize="15" PagedControlID="lstNghienCuuPhatTrien">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                            ShowPreviousPageButton="false" ButtonCssClass="first" RenderDisabledButtonsAsLabels="true" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                            ShowPreviousPageButton="true" ButtonCssClass="prev" RenderDisabledButtonsAsLabels="true" />
                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next"
                            ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last"
                            ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true" />
                    </Fields>
                </asp:DataPager>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
