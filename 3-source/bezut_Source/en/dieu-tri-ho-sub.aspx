<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-msub.master" AutoEventWireup="true"
    CodeFile="dieu-tri-ho-sub.aspx.cs" Inherits="dieu_tri_ho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
    <%--<div class="news-box">
        <h2 class="title-ab text-uppercase">
            Bài viết nổi bật</h2>
        <a href="#" class="news-img">
            <img src="assets/images/dieutriho-img-1.jpg" alt="" /></a>
        <h3 class="news-name">
            <a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
    </div>
    <ul class="list-news">
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
        <li><a href="#">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</a></li>
    </ul>--%>
    <asp:ListView ID="lstDieuTriHoNoiBat" runat="server" DataSourceID="odsDieuTriHoNoiBat"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-box">
                <h2 class="title-ab text-uppercase">
                    Bài viết nổi bật</h2>
                <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>' class="news-img">
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
                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:QueryStringParameter QueryStringField="dri" Name="ArticleCategoryID" Type="String" />
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headno">
        <h1 class="title text-uppercase">
            <asp:Label ID="lblCategory" runat="server"></asp:Label></h1>
    </div>
    <%--<div id="isotopelist" class="news-tb row">
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
        <div class="col-xs-6 element-item">
            <div class="box-newsa">
                <a href="#" class="news-img"><img src="assets/images/dieutriho-img-1.jpg" alt=""/></a>
                <h3 class="news-name"><a href="#">5 cách chữa ho hiệu quả cho trẻ bằng thảo dược</a></h3>
            </div>
        </div>
    </div>--%>
    <asp:ListView ID="lstDieuTriHo" runat="server" DataSourceID="odsDieuTriHo" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-6 element-item">
                <div class="box-newsa">
                    <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>' class="news-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dieutriho-img-1.jpg" %>'
                            runat="server" /></a>
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ArticleTitleEn")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                            <%# TLLib.Common.SplitSummary(Eval("ArticleTitleEn").ToString(), 40)%></a></h3>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="isotopelist" class="news-tb row">
                <span runat="server" id="itemPlaceholder" />
            </div>
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
            <asp:QueryStringParameter QueryStringField="dri" Name="ArticleCategoryID" Type="String" />
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
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
