<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-news.master" AutoEventWireup="true"
    CodeFile="tin-tuc-sub.aspx.cs" Inherits="tin_tuc_sub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>BEZUT </title>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headno">
        <h1 class="title text-uppercase">
            <asp:Label ID="lblCategory" runat="server"></asp:Label></h1>
    </div>
    <%--<div class="news-big line-bottom mb12">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img"><img src="assets/images/news-img-1.jpg" alt=""/></a>
        <div class="news-content">
            <h3 class="news-name"><a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</a></h3>
            <div class="description">Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước</div>
            <div class="more-details"><a href="tin-tuc-chi-tiet.aspx">Xem chi tiết</a></div>
        </div>
    </div>--%>
    <asp:ListView ID="lstTinTucNoiBat" runat="server" DataSourceID="odsTinTucNoiBat"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-big line-bottom mb12">
                <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>' class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                        runat="server" /></a>
                <div class="news-content">
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitleEn") %></a></h3>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 260) %></div>
                    <div class="more-details">
                        <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>View details</a></div>
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
            <asp:QueryStringParameter QueryStringField="tri" Name="ArticleCategoryID" Type="String" />
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

    <%--<div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>
    <div class="news-lbox">
        <a href="tin-tuc-chi-tiet.aspx" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <div class="news-content">
            <h3 class="news-name">
                <a href="tin-tuc-chi-tiet.aspx">Tác động đáng sợ của nước tăng lực đối với người tập
                    thể thao</a></h3>
            <div class="description">
                Thời tiết những ngày này liên tục thay đổi, ngày nắng ấm, đêm trở lạnh, độ ẩm không
                khí cao khiến tỷ lệ trẻ bị các bệnh đường hô hấp tăng hơn so với bình thường. Tuy
                nhiên, không phải cha mẹ nào cũng...</div>
        </div>
    </div>--%>
    <asp:ListView ID="lstTinTuc" runat="server" DataSourceID="odsTinTuc" EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-lbox">
                <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'
                    class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dieutriho-img-1.jpg" %>'
                        runat="server" /></a>
                <div class="news-content">
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                            <%# Eval("ArticleTitleEn") %></a></h3>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 260) %></div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsTinTuc" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:QueryStringParameter QueryStringField="tri" Name="ArticleCategoryID" Type="String" />
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
    <div id="pagerp" class="pager">
        <%--<a class="first" href="#">first</a> <a class="prev" href="#">prev</a> <a class="current"
            href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
        <a class="next" href="#">next</a> <a class="last" href="#">last</a>--%>
        <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstTinTuc">
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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
