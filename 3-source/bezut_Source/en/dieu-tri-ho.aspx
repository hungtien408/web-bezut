<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-msub.master" AutoEventWireup="true"
    CodeFile="dieu-tri-ho.aspx.cs" Inherits="dieu_tri_ho_sub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>BEZUT </title>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
    <div class="wrap-asidebox">
    <asp:ListView ID="lstDieuTriHoNoiBat" runat="server" DataSourceID="odsDieuTriHoNoiBat"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-box">
                <h2 class="title-ab text-uppercase">
                    Featured article</h2>
                <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'
                    class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                        runat="server" /></a>
                <h3 class="news-name">
                    <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                        <%# Eval("ArticleTitleEn")%></a></h3>
            </div>
            <asp:ListView ID="lstListDieuTriHo" runat="server" DataSourceID="odsListDieuTriHo"
                EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                        <%# Eval("ArticleTitleEn")%></a></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul class="list-news">
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsListDieuTriHo" runat="server" SelectMethod="ArticleSelectAll"
                TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="7" Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsDieuTriHoNoiBat" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head lineh">
        <h2 class="title-2">
            Cough treatment</h2>
        <%--<div class="head-list">
            <a href="dieu-tri-ho-sub.aspx">Bệnh học</a>
            <a href="dieu-tri-ho-sub.aspx">Điều trị ho bằng Thuốc Tây Y</a>
            <a href="dieu-tri-ho-sub.aspx">Điều trị ho bằng Thảo dược</a>
            <a href="dieu-tri-ho-sub.aspx">Tại sao nên dùng Bezut?</a>
        </div>--%>
        <asp:ListView ID="lstDanhMucDieuTriHo" runat="server" DataSourceID="odsDanhMucDieuTriHo"
            EnableModelValidation="True">
            <ItemTemplate>
                <a href='<%# progressTitle(Eval("ArticleCategoryNameEn")) + "-dti-" + Eval("ParentID") + "-dri-" + Eval("ArticleCategoryID") + ".aspx" %>'>
                    <%# Eval("ArticleCategoryNameEn")%></a>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="head-list">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsDanhMucDieuTriHo" runat="server" SelectMethod="ArticleCategorySelectAll"
            TypeName="TLLib.ArticleCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <%--<div class="slider-wrap">
        <div class="sliderBig bgm-1">
            <div class="slide">
                <div class="news-big">
                    <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                    <div class="news-content">
                        <h3 class="news-name"><a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</a></h3>
                        <div class="description">Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước</div>
                        <div class="more-details"><a class="text-uppercase" href="dieu-tri-ho-chi-tiet.aspx">Xem chi tiết</a></div>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="news-big">
                    <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                    <div class="news-content">
                        <h3 class="news-name"><a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</a></h3>
                        <div class="description">Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước</div>
                        <div class="more-details"><a class="text-uppercase" href="dieu-tri-ho-chi-tiet.aspx">Xem chi tiết</a></div>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="news-big">
                    <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                    <div class="news-content">
                        <h3 class="news-name"><a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</a></h3>
                        <div class="description">Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước</div>
                        <div class="more-details"><a class="text-uppercase" href="dieu-tri-ho-chi-tiet.aspx">Xem chi tiết</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <asp:ListView ID="lstSliderDieuTriHo" runat="server" DataSourceID="odsSliderDieuTriHo"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="slide">
                <div class="news-big">
                    <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'
                        class="news-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dieutriho-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="news-content">
                        <h3 class="news-name">
                            <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                                <%# Eval("ArticleTitleEn")%></a></h3>
                        <div class="description">
                            <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 80)%></div>
                        <div class="more-details">
                            <a class="text-uppercase" href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                                View details</a></div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="slider-wrap">
                <div class="sliderBig bgm-1">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsSliderDieuTriHo" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
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
    <%--<div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="dieu-tri-ho-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="dieu-tri-ho-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người
                    tập thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ListView ID="lstDieuTriHo" runat="server" DataSourceID="odsDieuTriHo" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="news-lbox">
                        <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'
                            class="news-img">
                            <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dieutriho-img-1.jpg" %>'
                                runat="server" /></a>
                        <div class="news-content">
                            <h3 class="news-name">
                                <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                                    <%# Eval("ArticleTitleEn")%></a></h3>
                            <div class="description">
                                <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 260)%></div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsDieuTriHo" runat="server" SelectMethod="ArticleSelectAll"
                TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
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
                <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstDieuTriHo">
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
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
