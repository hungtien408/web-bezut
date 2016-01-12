<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-tiemchung.master" AutoEventWireup="true"
    CodeFile="lich-tiem-chung-chi-tiet.aspx.cs" Inherits="lich_tiem_chung_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Lịch Tiêm Phòng </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <strong>Kết quả lịch tiêm phòng cho bé</strong></p>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>
                        Thời gian
                    </th>
                    <th>
                        Giai đoạn
                    </th>
                    <th>
                        Loại vacxin phòng bệnh
                    </th>
                    <th>
                        Ghi chú
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate1" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        Tuần đầu sau khi sinh
                    </td>
                    <td class="node">
                        Bệnh Lao (BCG)
                    </td>
                    <td class="node">
                        Mũi 1: Sau 4 năm tiêm mũi nhắc lại
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate2" runat="server"></asp:Label>
                    </td>
                    <td>
                        Tuần đầu sau khi sinh
                    </td>
                    <td>
                        Bệnh viêm gan B
                    </td>
                    <td>
                        Mũi 1
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate3" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        1 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh viêm gan B
                    </td>
                    <td class="node">
                        Mũi 2
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate4" runat="server"></asp:Label>
                    </td>
                    <td>
                        2 Tháng tuổi
                    </td>
                    <td>
                        Bệnh viêm gan B
                    </td>
                    <td>
                        Mũi 3
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate5" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        2 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                    </td>
                    <td class="node">
                        Mũi 1
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate6" runat="server"></asp:Label>
                    </td>
                    <td>
                        2 Tháng tuổi
                    </td>
                    <td>
                        Bệnh viêm màng não mủ, viêm phổi … do Hib
                    </td>
                    <td>
                        Mũi 1
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate7" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        3 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                    </td>
                    <td class="node">
                        Mũi 2
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate8" runat="server"></asp:Label>
                    </td>
                    <td>
                        3 Tháng tuổi
                    </td>
                    <td>
                        Bệnh viêm màng não mủ, viêm phổi … do Hib
                    </td>
                    <td>
                        Mũi 2
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate9" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        4 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh Bạch hầu, Ho gà, Uốn ván, Bại liệt
                    </td>
                    <td class="node">
                        Mũi 3
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate10" runat="server"></asp:Label>
                    </td>
                    <td>
                        4 Tháng tuổi
                    </td>
                    <td>
                        Bệnh viêm màng não mủ, viêm phổi … do Hib
                    </td>
                    <td>
                        Mũi 3
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate11" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        6 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh sởi
                    </td>
                    <td class="node">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate12" runat="server"></asp:Label>
                    </td>
                    <td>
                        1 tuổi
                    </td>
                    <td>
                        Bệnh viêm não Nhật Bản B
                    </td>
                    <td>
                        Mũi 1
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate13" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        1 tuổi
                    </td>
                    <td class="node">
                        Bệnh viêm gan B
                    </td>
                    <td class="node">
                        Mũi 4: Sau 8 năm tiêm mũi nhắc lại cuối cùng
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate14" runat="server"></asp:Label>
                    </td>
                    <td>
                        1 tuổi
                    </td>
                    <td>
                        Bệnh thủy đậu
                    </td>
                    <td>
                        Mũi duy nhất
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate15" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        1 tuổi
                    </td>
                    <td class="node">
                        Bệnh viêm não Nhật Bản B
                    </td>
                    <td class="node">
                        Mũi 2
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate16" runat="server"></asp:Label>
                    </td>
                    <td>
                        15 Tháng tuổi
                    </td>
                    <td>
                        Bệnh sởi, quai bị, Rubella
                    </td>
                    <td>
                        Mũi duy nhất
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate17" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        16 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                    </td>
                    <td class="node">
                        Mũi 4
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate18" runat="server"></asp:Label>
                    </td>
                    <td>
                        16 Tháng tuổi
                    </td>
                    <td>
                        Bệnh viêm màng não mủ, viêm phổi … do Hib
                    </td>
                    <td>
                        Mũi 4: Sau 3 năm tiêm mũi nhắc lại
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate19" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        18 Tháng tuổi
                    </td>
                    <td class="node">
                        Bệnh viêm màng não do Não mô cầu tuýp A + C
                    </td>
                    <td class="node">
                        Tiêm mũi nhắc lại sau mỗi 5 năm
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate20" runat="server"></asp:Label>
                    </td>
                    <td>
                        2 tuổi
                    </td>
                    <td>
                        Phế cầu
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="node">
                        <asp:Label ID="lblDate21" runat="server"></asp:Label>
                    </td>
                    <td class="node">
                        2 tuổi
                    </td>
                    <td class="node">
                        Bệnh viêm não Nhật Bản B
                    </td>
                    <td class="node">
                        Mũi 3: Sau mỗi 3 năm tiêm một mũi nhắc lại cho đến khi 15 tuổi
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <p>
        <strong>Lịch tiêm phòng cho bé bao gồm những mũi tiêm đề nghị sau:</strong></p>
    <ul class="list-tc">
        <li><a href="javascript:void(0);">Bệnh Lao (BCG)</a></li>
        <li><a href="javascript:void(0);">Bệnh viêm gan B</a></li>
        <li><a href="javascript:void(0);">Bệnh bạch hầu, ho gà, uốn ván, bại liệt</a></li>
        <li><a href="javascript:void(0);">Bệnh viêm màng não mủ, viêm phổi … do Hib</a></li>
        <li><a href="javascript:void(0);">Bệnh viêm não Nhật Bản B</a></li>
        <li><a href="javascript:void(0);">Bệnh thủy đậu</a></li>
        <li><a href="javascript:void(0);">Bệnh sởi, quai bị, Rubella</a></li>
        <li><a href="javascript:void(0);">Bệnh viêm màng não do Não mô cầu tuýp A
            + C</a></li>
        <li><a href="javascript:void(0);">Phế cầu</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
