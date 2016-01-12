<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoLichTiemPhong.aspx.cs"
    Inherits="DemoLichTiemPhong" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function () {
            $("#datepicker").datepicker({
               dateFormat: 'dd/mm/yy',
            });
            //$("#datepicker").datepicker();

            $("#btnXem").click(function () {
                var date = $('#datepicker').datepicker("getDate");
                var dateTime1 = new Date(date);
                dateTime1.setDate(dateTime1.getDate()+7);
                var dateTime2 = new Date(date);
                dateTime2.setMonth(dateTime2.getMonth()+1);
                var dateTime3 = new Date(date);
                dateTime3.setMonth(dateTime3.getMonth()+2);
                dateTime3.setDate(dateTime3.getDate()-1);
                var dateTime4 = new Date(date);
                dateTime4.setMonth(dateTime4.getMonth()+3);
                dateTime4.setDate(dateTime4.getDate()-1);
                var dateTime5 = new Date(date);
                dateTime5.setMonth(dateTime5.getMonth()+4);
                dateTime5.setDate(dateTime5.getDate()-2);
                var dateTime6 = new Date(date);
                dateTime6.setMonth(dateTime6.getMonth()+6);
                dateTime6.setDate(dateTime6.getDate()-2);
                var dateTime7 = new Date(date);
                dateTime7.setMonth(dateTime7.getMonth()+12);
                dateTime7.setDate(dateTime7.getDate()-1);
                var dateTime8 = new Date(date);
                dateTime8.setMonth(dateTime8.getMonth()+12);
                dateTime8.setDate(dateTime8.getDate()+6);
                var dateTime9 = new Date(date);
                dateTime9.setMonth(dateTime9.getMonth()+15);
                dateTime9.setDate(dateTime9.getDate()-7);
                var dateTime10 = new Date(date);
                dateTime10.setMonth(dateTime10.getMonth()+16);
                dateTime10.setDate(dateTime10.getDate()-8);
                var dateTime11 = new Date(date);
                dateTime11.setMonth(dateTime11.getMonth()+18);
                dateTime11.setDate(dateTime11.getDate()-7);
                var dateTime12 = new Date(date);
                dateTime12.setMonth(dateTime12.getMonth()+24);
                dateTime12.setDate(dateTime12.getDate()-1);
                
                $('#date1').val($.datepicker.formatDate('dd/mm/yy', dateTime1));
                $('#date2').val($.datepicker.formatDate('dd/mm/yy', dateTime1));
                $('#date3').val($.datepicker.formatDate('dd/mm/yy', dateTime2));
                $('#date4').val($.datepicker.formatDate('dd/mm/yy', dateTime3));
                $('#date5').val($.datepicker.formatDate('dd/mm/yy', dateTime3));
                $('#date6').val($.datepicker.formatDate('dd/mm/yy', dateTime3));
                $('#date7').val($.datepicker.formatDate('dd/mm/yy', dateTime4));
                $('#date8').val($.datepicker.formatDate('dd/mm/yy', dateTime4));
                $('#date9').val($.datepicker.formatDate('dd/mm/yy', dateTime5));
                $('#date10').val($.datepicker.formatDate('dd/mm/yy', dateTime5));
                $('#date11').val($.datepicker.formatDate('dd/mm/yy', dateTime6));
                $('#date12').val($.datepicker.formatDate('dd/mm/yy', dateTime7));
                $('#date13').val($.datepicker.formatDate('dd/mm/yy', dateTime7));
                $('#date14').val($.datepicker.formatDate('dd/mm/yy', dateTime7));
                $('#date15').val($.datepicker.formatDate('dd/mm/yy', dateTime8));
                $('#date16').val($.datepicker.formatDate('dd/mm/yy', dateTime9));
                $('#date17').val($.datepicker.formatDate('dd/mm/yy', dateTime10));
                $('#date18').val($.datepicker.formatDate('dd/mm/yy', dateTime10));
                $('#date19').val($.datepicker.formatDate('dd/mm/yy', dateTime11));
                $('#date20').val($.datepicker.formatDate('dd/mm/yy', dateTime12));
                $('#date21').val($.datepicker.formatDate('dd/mm/yy', dateTime12));
            });
        });
    </script>
    <style type="text/css">
        .app-results-main table.app-tiemphong-table
        {
            border-width: 1px 0 0 1px;
        }
        .app-results-main > table
        {
            border-color: #CDCDCD;
            border-style: solid;
            border-width: 1px 0 1px 1px;
            margin: 20px 15px 5px;
        }
        table
        {
            max-width: 100%;
            background-color: transparent;
        }
        table
        {
            border-collapse: collapse;
            border-spacing: 0;
        }
        .app-results-main table .col-tiemphong-time
        {
            width: 100px;
        }
        .app-results-main table th
        {
            background: none repeat scroll 0 0 #979797;
            border-bottom: 1px solid #CDCDCD;
            color: #FFFFFF;
            font-weight: normal;
            text-align: center;
        }
        .app-results-main table th, .app-results-main table td
        {
            border-right: 1px solid #CDCDCD;
            padding: 13px;
        }
        .app-results-main table tr.tiemphong-next-times, .app-results-main table tr.tiemphong-next-times td
        {
            background: none repeat scroll 0 0 #ff6d86;
            color: #ffffff;
        }
        .app-results-main table tr.tiemphong-next-times td input
        {
            color: #ffffff;
        }
        .date-select-wrapper
        {
            position: relative;
        }
        .btn-default
        {
            background-color: #00ADDB;
            border: 1px solid rgba(0, 0, 0, 0);
            color: #FFFFFF;
            font-size: 12px;
            margin-bottom: 10px;
            padding: 4px 25px;
            text-transform: uppercase;
            margin-top: 8px;
        }
        .col-tiemphong-time input {
            border: none;
            background: none;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="form-group">
            <label for="tiemphong_ngaysinh">
                Ngày sinh của bé hoặc ngày dự sinh:</label>
            <div class="date-select-wrapper">
                <input type="text" id="datepicker">
            </div>
        </div>
        <button id="btnXem" class="btn btn-default" type="button">
            Xem lịch tiêm phòng</button>
        <div class="app-results-main">
            <table cellpadding="0" cellspacing="0" class="app-tiemphong-table">
                <thead>
                    <tr>
                        <th class="col-tiemphong-time">
                            Thời gian
                        </th>
                        <th class="col-tiemphong-period">
                            Giai đoạn
                        </th>
                        <th class="col-tiemphong-type">
                            Loại vacxin phòng bệnh
                        </th>
                        <th class="col-tiemphong-note">
                            Ghi chú
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="even tiemphong-next-times">
                        <td class="col-tiemphong-time">
                            <input id="date1" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            Tuần đầu sau khi sinh
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh Lao (BCG)
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 1: Sau 4 năm tiêm mũi nhắc lại
                        </td>
                    </tr>
                    <tr class="odd tiemphong-next-times">
                        <td class="col-tiemphong-time">
                            <input id="date2" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            Tuần đầu sau khi sinh
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm gan B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 1
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date3" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            1 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm gan B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 2
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date4" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            2 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm gan B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 3
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date5" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            2 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 1
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date6" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            2 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm màng não mủ, viêm phổi … do Hib
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 1
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date7" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            3 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 2
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date8" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            3 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm màng não mủ, viêm phổi … do Hib
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 2
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date9" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            4 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh Bạch hầu, Ho gà, Uốn ván, Bại liệt
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 3
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date10" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            4 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm màng não mủ, viêm phổi … do Hib
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 3
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date11" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            6 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh sởi
                        </td>
                        <td class="col-tiemphong-note">
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date12" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            1 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm não Nhật Bản B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 1
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date13" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            1 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm gan B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 4: Sau 8 năm tiêm mũi nhắc lại cuối cùng
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date14" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            1 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh thủy đậu
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi duy nhất
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date15" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            1 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm não Nhật Bản B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 2
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date16" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            15 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh sởi, quai bị, Rubella
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi duy nhất
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date17" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            16 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh bạch hầu, ho gà, uốn ván, bại liệt
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 4
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date18" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            16 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm màng não mủ, viêm phổi … do Hib
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 4: Sau 3 năm tiêm mũi nhắc lại
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date19" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            18 Tháng tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm màng não do Não mô cầu tuýp A + C
                        </td>
                        <td class="col-tiemphong-note">
                            Tiêm mũi nhắc lại sau mỗi 5 năm
                        </td>
                    </tr>
                    <tr class="odd">
                        <td class="col-tiemphong-time">
                            <input id="date20" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            2 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Phế cầu
                        </td>
                        <td class="col-tiemphong-note">
                        </td>
                    </tr>
                    <tr class="even">
                        <td class="col-tiemphong-time">
                            <input id="date21" type="text" readonly="true"/>
                        </td>
                        <td class="col-tiemphong-period">
                            2 tuổi
                        </td>
                        <td class="col-tiemphong-type">
                            Bệnh viêm não Nhật Bản B
                        </td>
                        <td class="col-tiemphong-note">
                            Mũi 3: Sau mỗi 3 năm tiêm một mũi nhắc lại cho đến khi 15 tuổi
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
