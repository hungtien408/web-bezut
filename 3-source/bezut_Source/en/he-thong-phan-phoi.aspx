<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-phanphoi.master" AutoEventWireup="true"
    CodeFile="he-thong-phan-phoi.aspx.cs" Inherits="he_thong_phan_phoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Distribution system </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphTitle" runat="Server">
    <h1 class="title font600 mb15">
        Distribution system</h1>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headb headb-bgtop">
        <h2 class="title-2">
            The Northern</h2>
    </div>
    <%--<div class="row isotopelist list-dsitri">
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hà Nội</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Nam Định</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Ninh Bình</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Quảng Ninh 1</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Bắc Ninh</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hải Phòng</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hòa Bình</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hải Dương</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hưng Yên</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Bắc Giang</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Phú Thọ</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Thái Nguyên</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Vĩnh Phúc</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Thái Bình</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Sơn Tây</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Yên Bái</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Tuyên Quang</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Cao Bằng</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Lào Cai</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Hà nam</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Quảng Ninh 2</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Sơn La</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Điện Biên</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-sub.aspx">Lạng sơn</a></div>
    </div>--%>
    <asp:ListView ID="lstMienBac" runat="server" DataSourceID="odsMienBac" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
                <a href='<%# progressTitle(Eval("ProvinceNameEn")) + "-pvi-" + Eval("ProvinceID") + ".aspx" %>'><%# Eval("ProvinceNameEn")%></a></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="row isotopelist list-dsitri">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsMienBac" runat="server" 
        SelectMethod="ProvinceSelectAll" TypeName="TLLib.Province">
        <SelectParameters>
            <asp:Parameter Name="ProvinceID" Type="String" />
            <asp:Parameter Name="ProvinceName" Type="String" />
            <asp:Parameter Name="ShortName" Type="String" />
            <asp:Parameter DefaultValue="2" Name="CountryID" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="headb headb-bgtop">
        <h2 class="title-2">
            The Central</h2>
    </div>
    <%--<div class="row isotopelist list-dsitri">
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Thanh Hóa</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Nghệ An</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Quảng Trị</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Thừa Thiên - Huế</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Đà Nẵng</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Quảng Nam</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bình Thuận</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Phú Yên</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Quảng Bình</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Quảng Ngãi</a></div>
    </div>--%>
    <asp:ListView ID="lstMienTrung" runat="server" DataSourceID="odsMienTrung" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
                <a href='<%# progressTitle(Eval("ProvinceNameEn")) + "-pvi-" + Eval("ProvinceID") + ".aspx" %>'><%# Eval("ProvinceNameEn")%></a></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="row isotopelist list-dsitri">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsMienTrung" runat="server" 
        SelectMethod="ProvinceSelectAll" TypeName="TLLib.Province">
        <SelectParameters>
            <asp:Parameter Name="ProvinceID" Type="String" />
            <asp:Parameter Name="ProvinceName" Type="String" />
            <asp:Parameter Name="ShortName" Type="String" />
            <asp:Parameter DefaultValue="3" Name="CountryID" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="headb headb-bgtop">
        <h2 class="title-2">
            The Southern</h2>
    </div>
    <%--<div class="row isotopelist list-dsitri">
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">TP. Hồ Chí Minh</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Đồng Nai</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Vũng Tàu</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Tây Ninh</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Hậu Giang</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bình Dương</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Vĩnh Long</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Trà Vinh</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Đắc Lắc</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bình Định</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Tiền Giang</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Đồng Tháp</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Long An</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Cần Thơ</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Kiên Giang</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Cà Mau</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bến Tre</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">An Giang</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bạc Liêu</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bình Phước</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Bình Thuận</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Lâm Đồng</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Sóc Trăng</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Khánh Hòa</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
            <a href="he-thong-phan-phoi-sub.aspx">Gia Lai</a></div>
    </div>--%>
    <asp:ListView ID="lstMienNam" runat="server" DataSourceID="odsMienNam" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
                <a href='<%# progressTitle(Eval("ProvinceNameEn")) + "-pvi-" + Eval("ProvinceID") + ".aspx" %>'><%# Eval("ProvinceNameEn")%></a></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="row isotopelist list-dsitri">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsMienNam" runat="server" 
        SelectMethod="ProvinceSelectAll" TypeName="TLLib.Province">
        <SelectParameters>
            <asp:Parameter Name="ProvinceID" Type="String" />
            <asp:Parameter Name="ProvinceName" Type="String" />
            <asp:Parameter Name="ShortName" Type="String" />
            <asp:Parameter DefaultValue="4" Name="CountryID" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
