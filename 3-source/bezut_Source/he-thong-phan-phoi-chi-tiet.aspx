<%@ Page Title="" Language="C#" MasterPageFile="~/site-phanphoi.master" AutoEventWireup="true"
    CodeFile="he-thong-phan-phoi-chi-tiet.aspx.cs" Inherits="he_thong_phan_phoi_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Hệ Thống Phân Phối </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphTitle" runat="Server">
    <h1 class="title font600 mb15">
        <asp:Label ID="lblThanhPhoQuan" runat="server"></asp:Label></h1>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-distri">
        <div class="table-responsive">
            <%--<table class="table">            <thead>                <tr>                    <th>STT</th>                    <th>quận</th>                    <th>tên nhà thuốc</th>                    <th>Địa chỉ</th>                </tr>            </thead>            <tbody>                <tr>                    <td>1</td>                    <td>3</td>                    <td>Nhà thuốc Mỹ Châu</td>                    <td>152 Trần Quốc Thảo, Q.3</td>                </tr>                <tr>                    <td>2</td>                    <td>3</td>                    <td>Nhà thuốc Đại Phúc</td>                    <td>389 Hai Bà Trưng, F8, Q.3</td>                </tr>                <tr>                    <td>3</td>                    <td>3</td>                    <td>Nhà thuốc Hồng Ngọc</td>                    <td>390 Lê Văn Sĩ, Q.3</td>                </tr>                <tr>                    <td>4</td>                    <td>3</td>                    <td>Nhà thuốc Long Châu</td>                    <td>375 Hai Bà Trưng, Q.3</td>                </tr>                <tr>                    <td>5</td>                    <td>3</td>                    <td>Nhà thuốc Số 37</td>                    <td>400 CMT8, P .11,Quận 3</td>                </tr>                <tr>                    <td>6</td>                    <td>3</td>                    <td>Nhà thuốc Thái Hòa</td>                    <td>398A CMT8, Quận 3</td>                </tr>                <tr>                    <td>7</td>                    <td>3</td>                    <td>Nhà thuốc Nam Quang</td>                    <td>400 Lê Văn Sĩ, Q.3</td>                </tr>                <tr>                    <td>8</td>                    <td>3</td>                    <td>Nhà thuốc Số 32</td>                    <td>Kios chợ Nguyễn Văn Trỗi Q3</td>                </tr>                <tr>                    <td>9</td>                    <td>3</td>                    <td>Nhà thuốc Số 4</td>                    <td>68 CMT8 Q3</td>                </tr>                <tr>                    <td>10</td>                    <td>3</td>                    <td>Nhà thuốc Hồng Ngọc 2</td>                    <td>87 Trần Quang Diệu Q.3</td>                </tr>                <tr>                    <td>11</td>                    <td>3</td>                    <td>Nhà thuốc Đại Phúc 2</td>                    <td>128 Trần Quốc Thảo, Q.3</td>                </tr>                <tr>                    <td>12</td>                    <td>3</td>                    <td>Cửa Hàng Thiên Phước	</td>                    <td>466 Nguyễn Thị Minh Khai  Q3</td>                </tr>                <tr>                    <td>13</td>                    <td>3</td>                    <td>Nhà thuốc Hồng Ngọc I</td>                    <td>390 Lê Văn Sỹ, Q. 3</td>                </tr>            </tbody>          </table>--%>
            <asp:ListView ID="lstPhanPhoiDetails" runat="server" DataSourceID="odsPhanPhoiDetails"
                GroupItemCount="1" EnableModelValidation="True">
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server">
                        </td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td><%# Container.DataItemIndex + 1 %></td>                    <td><%# Eval("DistrictName") %></td>                    <td><%# Eval("Company")%></td>                    <td><%# Eval("Address1")%></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table id="Table1" class="table" runat="server">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>quận</th>
                                <th>tên nhà thuốc</th>
                                <th>Địa chỉ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="groupPlaceholderContainer" runat="server">
                                <td id="groupPlaceholder" runat="server">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsPhanPhoiDetails" runat="server" 
                SelectMethod="AddressBook1SelectAll" TypeName="TLLib.AddressBook1">
                <SelectParameters>
                    <asp:Parameter Name="AddressBookID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="HomePhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CountryID" Type="String" />
                    <asp:QueryStringParameter Name="ProvinceID" QueryStringField="pvi" 
                        Type="String" />
                    <asp:QueryStringParameter Name="DistrictID" QueryStringField="dsi" 
                        Type="String" />
                    <asp:Parameter Name="IsPrimary" Type="String" />
                    <asp:Parameter Name="IsPrimaryBilling" Type="String" />
                    <asp:Parameter Name="IsPrimaryShipping" Type="String" />
                    <asp:Parameter Name="RoleName" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
