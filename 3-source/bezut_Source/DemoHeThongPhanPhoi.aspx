<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoHeThongPhanPhoi.aspx.cs"
    Inherits="DemoLichTiemPhong" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script type="text/javascript">
        $(document).ready(function() {
            $('#dropListThanhPho').val($('#select option').eq(-1).val());
            //$('#dropListQuan').val($('#select option').val().clean());
            $('#dropListQuan').empty();
        });
    </script>
    <style type="text/css">
        .form-group
        {
            float: left;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <div class="form-group">
                    Thành phố:
                    <asp:DropDownList ID="dropListThanhPho" runat="server" DataSourceID="odsThanhPho"
                        DataTextField="ProvinceName" DataValueField="ProvinceID" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="odsThanhPho" runat="server" SelectMethod="ProvinceSelectAll"
                        TypeName="TLLib.Province">
                        <SelectParameters>
                            <asp:Parameter Name="ProvinceID" Type="String" />
                            <asp:Parameter Name="ProvinceName" Type="String" />
                            <asp:Parameter Name="ShortName" Type="String" />
                            <asp:Parameter DefaultValue="1" Name="CountryID" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="form-group">
                    Quận:
                    <asp:DropDownList ID="dropListQuan" runat="server" DataSourceID="odsQuan" DataTextField="DistrictName"
                        DataValueField="DistrictID" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="odsQuan" runat="server" SelectMethod="DistrictSelectAll"
                        TypeName="TLLib.District">
                        <SelectParameters>
                            <asp:Parameter Name="DistrictName" Type="String" />
                            <asp:ControlParameter ControlID="dropListThanhPho" Name="ProvinceIDs" PropertyName="SelectedValue"
                                Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" onclick="btnTimKiem_Click"/>
                </div>
            </div>
            <br/>
            <div>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True">
                    <ItemTemplate>
                        <li>
                            <div>
                                <%# Eval("Company") %></div>
                            <div>
                                <%# Eval("Address1") %></div>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="AddressBook1SelectAll"
                    TypeName="TLLib.AddressBook1">
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
                        <asp:QueryStringParameter Name="ProvinceID" QueryStringField="tp" Type="String" />
                        <asp:QueryStringParameter QueryStringField="dis" Name="DistrictID" Type="String" />
                        <asp:Parameter Name="IsPrimary" Type="String" />
                        <asp:Parameter Name="IsPrimaryBilling" Type="String" />
                        <asp:Parameter Name="IsPrimaryShipping" Type="String" />
                        <asp:Parameter Name="RoleName" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
