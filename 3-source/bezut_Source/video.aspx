<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="video.aspx.cs" Inherits="video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Video </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper-video">
        <%--<div class="video-details">
                <div id="jwplayer"></div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        jwplayer('jwplayer').setup({
                            file: "https://youtu.be/wDJ5nol2JKs",
                            flashplayer: "assets/js/jwplayer.flash.swf",
                            width: '100%',
                            aspectratio: '16:9'
                        });
                        jwplayer('jwplayer').play();
                    });
                </script>
        </div>--%>
        <asp:ListView ID="lstVideoDetails" runat="server" DataSourceID="odsVideoDetails"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="video-details">
                    <div id="jwplayer">
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            jwplayer('jwplayer').setup({
                                file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                flashplayer: "assets/js/jwplayer.flash.swf",
                                width: '100%',
                                aspectratio: '16:9'
                            });
                            jwplayer('jwplayer').play();
                        });
                    </script>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsVideoDetails" runat="server" SelectMethod="VideoSelectOne"
            TypeName="TLLib.Video">
            <SelectParameters>
                <asp:QueryStringParameter Name="VideoID" QueryStringField="vd" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="video-list">
            <h2 class="title">
                Video nổi bật</h2>
            <%--<ul class="list-video">
                <li><a href="video.aspx" class="video-box"><span class="video-img">
                    <img src="assets/images/video-img.jpg" alt="" />
                    <span class="video-time">00:00</span> <span class="show">đã xem</span> </span><span
                        class="video-content"><span class="video-name">Quảng cáo viên ngậm ho Bezut</span>
                        <span class="description">Post by admin<br />
                            20 lượt xem </span></span></a></li>
                <li><a href="video.aspx" class="video-box"><span class="video-img">
                    <img src="assets/images/video-img.jpg" alt="" />
                    <span class="video-time">00:00</span> <span class="show">đã xem</span> </span><span
                        class="video-content"><span class="video-name">Quảng cáo viên ngậm ho Bezut</span>
                        <span class="description">Post by admin<br />
                            20 lượt xem </span></span></a></li>
                <li><a href="video.aspx" class="video-box"><span class="video-img">
                    <img src="assets/images/video-img.jpg" alt="" />
                    <span class="video-time">00:00</span> <span class="show">đã xem</span> </span><span
                        class="video-content"><span class="video-name">Quảng cáo viên ngậm ho Bezut</span>
                        <span class="description">Post by admin<br />
                            20 lượt xem </span></span></a></li>
            </ul>--%>
            <asp:ListView ID="lstVideoNoiBat" runat="server" DataSourceID="odsVideoNoiBat" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'
                        class="video-box"><span class="video-img">
                            <img alt='<%# Eval("ImagePath") %>' src='<%# !string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "~/res/video/thumbs/" + Eval("ImagePath") : "~/assets/images/video-img.jpg" %>'
                                runat="server" />
                            <span class="video-time"></span> <span class="show"></span> </span><span
                                class="video-content"><span class="video-name"><%# Eval("Title") %></span>
                                <%--<span class="description">Post by admin<br />
                                20 lượt xem </span>--%></span></a></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul class="list-video">
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsVideoNoiBat" runat="server" SelectMethod="VideoSelectAll"
                TypeName="TLLib.Video">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="VideoCategoryID" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <%--<div class="wrap-section video-wrap">
        <div class="product-tb row">
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3 element-item">
                <div class="product-box">
                    <a href="tin-tuc-chi-tiet.aspx" class="product-img">
                        <img src="assets/images/news-img-1.jpg" alt="" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href="tin-tuc-chi-tiet.aspx">4 bệnh liên quan đến đường ruột, tiêu hóa thường gặp
                                nhất</a></h3>
                        <div class="description">
                            Post by admin | 20 lượt xem
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-md-3 col-xs-4 element-item">
                <div class="product-box">
                    <a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'
                        class="product-img">
                        <img alt='<%# Eval("ImagePath") %>' src='<%# !string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "~/res/video/thumbs/" + Eval("ImagePath") : "~/assets/images/news-img-1.jpg" %>'
                            runat="server" />
                        <span class="icon-lay"><span></span></span></a>
                    <div class="product-content">
                        <h3 class="product-name">
                            <a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                                <%# Eval("Title") %></a></h3>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="wrap-section video-wrap">
                <div class="product-tb row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll"
        TypeName="TLLib.Video">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="VideoCategoryID" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
