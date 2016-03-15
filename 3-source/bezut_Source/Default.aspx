<%@ Page Title="" Language="C#" MasterPageFile="~/site-msub.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>BEZUT </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="wrapper-banner">
        <div class="container">
            
        <div id="banner">
            <div class="doc-bg"><img src="assets/images/do-bg.gif" alt=""/></div>
            <div class="doctor">
                <a href="https://www.facebook.com/bacsibezut"><img src="assets/images/doctor-img.gif" alt="" /></a></div>
            <div class="slider-wrapper">
                <%--<div id="slider" class="nivoSlider">
                    <img src="assets/images/banner-img-1.jpg" alt=""/>
                    <img src="assets/images/banner-img-2.jpg" alt=""/>
                    <img src="assets/images/banner-img-3.jpg" alt=""/>
                    <img src="assets/images/banner-img-4.jpg" alt=""/>
                    <img src="assets/images/banner-img-5.jpg" alt=""/>
                </div>--%>
                <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <img id="Img3" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner-img-1.jpg" %>'
                            runat="server" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="slider" class="nivoSlider">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
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
        </div>
    </div>
    <%--<div class="bannerbg">
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
    <div id="facebook">
        <%--<img src="assets/images/facebook-img.jpg" alt="" />--%>
        <div class="fb-page" data-href="https://www.facebook.com/bacsibezut" data-small-header="false"
            data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"
            data-show-posts="false">
            <div class="fb-xfbml-parse-ignore">
                <blockquote cite="https://www.facebook.com/bacsibezut">
                    <a href="https://www.facebook.com/bacsibezut">Bezut</a></blockquote>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--section 1-->
    <div class="head lineh">
        <h2 class="title-2">
            tin tức</h2>
        <%--<div class="head-list">
            <a href="#">Tin Y tế tổng hợp</a> <a href="#">Sự kiện BEZUT</a> <a href="#">Tin giải
                trí</a>
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
    <div class="wrap-section">
        <%--<div class="section-box">
            <a href="#" class="section-img">
                <img src="assets/images/news-img-1.jpg" alt="" />
                <span class="section-name">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</span>
            </a>
            <div class="description">
                Giảm ho an toàn cho trẻ em là vấn đề luôn được các mẹ quan tâm vì khi thời tiết
                trở lạnh, hầu hết trẻ em đều rất dễ mắc phải chứng ho khan kéo dài. Cha mẹ khi thấy
                con bị ho thường sử dụng thuốc...</div>
        </div>
        <ul class="section-list">
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
        </ul>--%>
        <asp:ListView ID="lstTinTuc" runat="server" DataSourceID="odsTinTuc" EnableModelValidation="True">
            <ItemTemplate>
                <div class="section-box">
                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'
                        class="section-img">
                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" />
                        <span class="section-name">
                            <%# Eval("ArticleTitle") %></span> </a>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 280) %></div>
                </div>
                <asp:ListView ID="lstListTinTuc" runat="server" DataSourceID="odsListTinTuc" EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a class="section-img" href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                            <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                                runat="server" /></a>
                            <div class="section-content">
                                <h3 class="section-name">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tci-" + Eval("ArticleCategoryID") + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                        <%# Eval("ArticleTitle") %></a></h3>
                                <div class="description">
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 50) %></div>
                            </div>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="section-list">
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsListTinTuc" runat="server" SelectMethod="ArticleSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
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
        <asp:ObjectDataSource ID="odsTinTuc" runat="server" SelectMethod="ArticleSelectAll"
            TypeName="TLLib.Article">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ArticleTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="more-all">
            <a href="tin-tuc.aspx"><span>Xem tất cả</span></a>
        </div>
    </div>
    <!--section 2-->
    <div class="head lineh">
        <h2 class="title-2">
            Điều trị ho</h2>
        <%--<div class="head-list">
            <a href="#">Bệnh học</a> <a href="#">Điều trị ho bằng Thuốc Tây Y</a> <a href="#">Điều
                trị ho bằng Thảo dược</a> <a href="#">Tại sao nên dùng Bezut?</a>
        </div>--%>
        <asp:ListView ID="lstDanhMucDieuTriHo" runat="server" DataSourceID="odsDanhMucDieuTriHo"
            EnableModelValidation="True">
            <ItemTemplate>
                <a href='<%# progressTitle(Eval("ArticleCategoryName")) + "-dti-" + Eval("ParentID") + "-dri-" + Eval("ArticleCategoryID") + ".aspx" %>'>
                    <%# Eval("ArticleCategoryName")%></a>
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
    <div class="wrap-section">
        <%--<div class="section-box">
            <a href="#" class="section-img">
                <img src="assets/images/news-img-1.jpg" alt="" />
                <span class="section-name">Phải làm sao để mùa lạnh không còn là “mùa ho” ở trẻ</span>
            </a>
            <div class="description">
                Giảm ho an toàn cho trẻ em là vấn đề luôn được các mẹ quan tâm vì khi thời tiết
                trở lạnh, hầu hết trẻ em đều rất dễ mắc phải chứng ho khan kéo dài. Cha mẹ khi thấy
                con bị ho thường sử dụng thuốc...</div>
        </div>
        <ul class="section-list">
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
            <li><a class="section-img" href="#">
                <img src="assets/images/news-img-1.jpg" alt="" /></a>
                <div class="section-content">
                    <h3 class="section-name">
                        <a href="#">Không nên coi thường chứng ho ở trẻ</a></h3>
                    <div class="description">
                        Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh...</div>
                </div>
            </li>
        </ul>--%>
        <asp:ListView ID="lstDieuTriHo" runat="server" DataSourceID="odsDieuTriHo" EnableModelValidation="True">
            <ItemTemplate>
                <div class="section-box">
                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'
                        class="section-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" />
                        <span class="section-name">
                            <%# Eval("ArticleTitle")%></span> </a>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 280) %></div>
                </div>
                <asp:ListView ID="lstListDieuTriHo" runat="server" DataSourceID="odsListDieuTriHo"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a class="section-img" href='<%# progressTitle(Eval("ArticleTitle")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                            <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                                runat="server" /></a>
                            <div class="section-content">
                                <h3 class="section-name">
                                    <a href='<%# progressTitle(Eval("ArticleTitle")) + "-dti-" + Eval("ArticleCategoryID") + "-di-" + Eval("ArticleID") + ".aspx" %>'>
                                        <%# Eval("ArticleTitle")%></a></h3>
                                <div class="description">
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 50) %></div>
                            </div>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="section-list">
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsListDieuTriHo" runat="server" SelectMethod="ArticleSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
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
        <asp:ObjectDataSource ID="odsDieuTriHo" runat="server" SelectMethod="ArticleSelectAll"
            TypeName="TLLib.Article">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ArticleTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="more-all">
            <a href="dieu-tri-ho.aspx"><span>Xem tất cả</span></a>
        </div>
    </div>
    <!--section 3-->
    <div class="head lineh">
        <h2 class="title-2">
            sức khoẻ tổng hợp</h2>
        <%--<div class="head-list">
            <a href="#">Bệnh hô hấp</a> <a href="#">Bệnh tiêu hóa</a> <a href="#">Biếng ăn</a>
            <a href="#">Còi Xương, chậm lớn</a> <a href="#">Bệnh thường gặp khác</a>
        </div>--%>
        <asp:ListView ID="lstDanhMucKienThucBenhHoc" runat="server" DataSourceID="odsDanhMucKienThucBenhHoc"
            EnableModelValidation="True">
            <ItemTemplate>
                <a href='<%# progressTitle(Eval("ArticleCategoryName")) + "-kci-" + Eval("ParentID") + "-kri-" + Eval("ArticleCategoryID") + ".aspx" %>'>
                    <%# Eval("ArticleCategoryName")%></a>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="head-list">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsDanhMucKienThucBenhHoc" runat="server" SelectMethod="ArticleCategorySelectAll"
            TypeName="TLLib.ArticleCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="wrap-section">
        <%--<div class="section-tb row">
            <div class="col-xs-4">
                <div class="box-news">
                    <a class="section-img" href="#">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="section-content">
                        <h3 class="section-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="box-news">
                    <a class="section-img" href="#">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="section-content">
                        <h3 class="section-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="box-news">
                    <a class="section-img" href="#">
                        <img src="assets/images/news-img-1.jpg" alt="" /></a>
                    <div class="section-content">
                        <h3 class="section-name">
                            <a href="#">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp nhất</a></h3>
                        <div class="description">
                            Những cơn ho dai dẳng kéo dài luôn là nỗi ám ảnh không chỉ của riêng trẻ mà còn
                            cả với các bậc phụ huynh...</div>
                    </div>
                </div>
            </div>
        </div>--%>
        <asp:ListView ID="lstKienThucBenhHoc" runat="server" DataSourceID="odsKienThucBenhHoc"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="col-lg-4 col-md-6 col-sm-4 col-xs-6  element-item">
                    <div class="box-news">
                        <a class="section-img" href='<%# progressTitle(Eval("ArticleTitle")) + "-kci-" + Eval("ArticleCategoryID") + "-ki-" + Eval("ArticleID") + ".aspx" %>'>
                            <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                                runat="server" /></a>
                        <div class="section-content">
                            <h3 class="section-name">
                                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-kci-" + Eval("ArticleCategoryID") + "-ki-" + Eval("ArticleID") + ".aspx" %>'>
                                    <%# Eval("ArticleTitle")%></a></h3>
                            <div class="description">
                                <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 120) %></div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="isotopelist" class="section-tb row mobile100">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsKienThucBenhHoc" runat="server" SelectMethod="ArticleSelectAll"
            TypeName="TLLib.Article">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ArticleTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="3" Name="ArticleCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="more-all">
            <a href="kien-thuc-benh-hoc.aspx"><span>Xem tất cả</span></a>
        </div>
    </div>
    <!--section4-->
    <h2 class="title text-uppercase">
        sản phẩm</h2>
    <%--<div class="wrap-section pro-site">
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
    <%--<asp:ListView ID="lstDanhMucSanPham" runat="server" DataSourceID="odsDanhMucSanPham"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-4 element-item">
                <div class="product-box">
                    <a href='<%# Eval("ProductCategoryLink") %>' class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="#">
                                <%# Eval("ProductCategoryName") %></a></h3>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="wrap-section pro-site">
                <div class="product-tb pro-tb row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>--%>
    <%--<asp:ListView ID="lstDanhMucSanPham" runat="server" DataSourceID="odsDanhMucSanPham"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-6 element-item">
                <div class="product-box">
                    <a href='<%# !string.IsNullOrEmpty(Eval("ProductCategoryLink").ToString()) ? Eval("ProductCategoryLink") : progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>' class="product-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" /></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href='<%# !string.IsNullOrEmpty(Eval("ProductCategoryLink").ToString()) ? Eval("ProductCategoryLink") : progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                <%# Eval("ProductCategoryName") %></a></h3>
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
    </asp:ObjectDataSource>--%>
    <asp:ListView ID="lstDanhMucSanPham" runat="server" DataSourceID="odsDanhMucSanPham"
        EnableModelValidation="True">
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
            <div class="wrap-section line-bottom pro-site">
                <div class="product-tb pro-tb row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsDanhMucSanPham" runat="server" SelectMethod="ProductSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="PriceFrom" Type="String" />
            <asp:Parameter Name="PriceTo" Type="String" />
            <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
            <asp:Parameter Name="ManufacturerID" Type="String" />
            <asp:Parameter Name="OriginID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="InStock" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="IsBestSeller" Type="String" />
            <asp:Parameter Name="IsSaleOff" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <%--<div class="more-all">
        <a href="#"><span>Xem tất cả</span></a>
    </div>--%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
