<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-phanphoi.master" AutoEventWireup="true"
    CodeFile="he-thong-phan-phoi-sub.aspx.cs" Inherits="he_thong_phan_phoi_sub" %>

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
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head linenobg border-b">
        <h2 class="title-2">
            <asp:Label ID="lblThanhPho" runat="server"></asp:Label></h2>
    </div>
    <%--<div class="row isotopelist list-dsitri">
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 1</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 2</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 3</a></div>
        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 4</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 5</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 6</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 7</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 8</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 9</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 10</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Bình Thạnh</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Phú Nhuận</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Gò Vấp</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Bình Tân</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Thủ Đức</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 11</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận 12</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Củ Chi</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Hóc Môn</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận Tân Phú</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Nhà Bè</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận Tân Bình</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Quận Bình Chánh</a></div>        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item"><a href="he-thong-phan-phoi-chi-tiet.aspx">Lạng sơn</a></div>
    </div>--%>
    <asp:ListView ID="lstQuan" runat="server" DataSourceID="odsQuan" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 element-item">
                <a href='<%# progressTitle(Eval("DistrictNameEn")) + "-pvi-" + Eval("ProvinceID") + "-dsi-" + Eval("DistrictID") + ".aspx" %>'>
                    <%# Eval("DistrictNameEn")%></a></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="row isotopelist list-dsitri">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsQuan" runat="server" SelectMethod="DistrictSelectAll"
        TypeName="TLLib.District">
        <SelectParameters>
            <asp:Parameter Name="DistrictName" Type="String" />
            <asp:QueryStringParameter QueryStringField="pvi" Name="ProvinceIDs" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
