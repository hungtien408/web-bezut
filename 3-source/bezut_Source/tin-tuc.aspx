<%@ Page Title="" Language="C#" MasterPageFile="~/site-news.master" AutoEventWireup="true"
    CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head lineh">
        <h2 class="title-2">
            tin tức</h2>
        <%--<div class="head-list">
                <a href="#">Tin Y tế tổng hợp</a>
                <a href="#">Sự kiện BEZUT</a>
                <a href="#">Tin giải trí</a>
            </div>--%>
        <asp:ListView ID="lstDanhMucTinTuc" runat="server" DataSourceID="odsDanhMucTinTuc"
            EnableModelValidation="True">
            <ItemTemplate>
                <a href='<%# progressTitle(Eval("ArticleCategoryName")) + "-tci-" + Eval("ParentID") + "-tri-" + Eval("ArticleCategoryID") + ".aspx" %>'>
                    <%# Eval("ArticleCategoryName")%></a>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="head-list">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsDanhMucTinTuc" runat="server" SelectMethod="ArticleCategorySelectAll"
            TypeName="TLLib.ArticleCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <%--<div class="news-big line-bottom">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/news-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống
                lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống
                nước</div>
            <div class="more-details">
                <a href="tin-tuc-chi-tiet.aspx">Xem chi tiết</a></div>
        </div>
    </div>--%>
    <asp:ListView ID="lstTinTucNoiBat" runat="server" DataSourceID="odsTinTucNoiBat"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-big line-bottom">
                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>' class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                        runat="server" /></a>
                <div class="news-content">
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                            <%# Eval("ArticleTitle") %></a></h3>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 260) %></div>
                    <div class="more-details">
                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>Xem chi tiết</a></div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsTinTucNoiBat" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsNew" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
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
            <asp:ListView ID="lstTinTuc" runat="server" DataSourceID="odsTinTuc" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="col-xs-4 element-item">
                        <div class="product-box">
                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>' class="product-img">
                                <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                                    runat="server" /></a>
                            <div class="product-content">
                                <h3 class="product-name">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                        <%# Eval("ArticleTitle") %></a></h3>
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
            <%--<asp:HiddenField ID="hdnArticleID" runat="server" />--%>
            <asp:ObjectDataSource ID="odsTinTuc" runat="server" SelectMethod="ArticleSelectAll"
                TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div id="pagerp" class="pager">
                <%--<a class="first" href="#">first</a> <a class="prev" href="#">prev</a> <a class="current"
            href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
        <a class="next" href="#">next</a> <a class="last" href="#">last</a>--%>
                <asp:DataPager ID="DataPager1" runat="server" PageSize="15" PagedControlID="lstTinTuc">
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
