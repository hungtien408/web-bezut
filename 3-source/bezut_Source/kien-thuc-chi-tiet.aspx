<%@ Page Title="" Language="C#" MasterPageFile="~/site-kienthuc.master" AutoEventWireup="true"
    CodeFile="kien-thuc-chi-tiet.aspx.cs" Inherits="kien_thuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>BEZUT </title>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headno">
        <h2 class="title text-uppercase">
            <asp:Label ID="lblCategory" runat="server"></asp:Label></h2>
    </div>
    <%--<h1 class="title mb15">Tác động đáng sợ của nước tăng lực đối với người tập thể thao</h1>
    <div class="wrapper-text">
        <p>Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước. Nếu bạn vẫn tin rằng uống nước tăng lực trước khi thi đấu hay sau khi chơi thể thao là một ý tưởng thông minh, hãy lưu ý điều này: Một nghiên cứu mới trên tạp chí Dinh dưỡng của Anh cho thấy, mặc dù các đồ uống chứa caffein này giúp các vận động viên cảm thấy mạnh mẽ và nâng cao hiệu suất hoạt động một chút, nhưng chúng cũng đồng thời mang lại các chứng mất ngủ, căng thẳng, và kích thích quá mức. </p>
        <div style="margin: 10px 0; text-align: center;">
            <img src="assets/images/about-img-1.jpg" alt=""/></div>
        <p>Các tác giả nghiên cứu muốn tìm hiểu xem liệu vận động viên, những người thường xuyên tiêu thụ nước uống thể thao, liệu có chịu các lợi ích và tiêu cực tương tự không. Họ đã thực hiện một chương trình nghiên cứu với 90 vận động viên đăng ký, cả nam lẫn nữ, những người bình thường tiêu thụ ít caffein. Một nhóm sử dụng lượng tương đương với ba lon nước tăng lực mua ở cửa hàng, trong khi nhóm kia  chỉ uống một chút giả dược có chứa các thành phần tương tự nhưng không có caffein. Một giờ sau, từng người được đưa vào tham gia buổi tập luyện, sau đó đánh giá hiệu quả hoạt động thể thao. Các nhà nghiên cứu cũng yêu cầu những người tham gia cho biết họ cảm thấy như thế nào khi ở trên sân hoặc sàn tập.</p>        <p>Kết quả: Một mặt, các vận động viên thể hiện tốt hơn từ 3-7% sau khi tiêu thụ các thức uống tăng lực. Những người này cũng cho biết họ cảm thấy cơ bắp mạnh mẽ hơn sau khi sử dụng đồ uống thể thao. Nhưng sau đó các dấu hiệu tiêu cực bắt đầu xuất hiện: 31% đối tượng nghiên cứu - những người đã uống nước tăng lực, bị mất ngủ đêm đó, và các vận động viên nữ cảm thấy mức độ mệt mỏi cao nhất vào sáng hôm sau. Tác dụng phụ khác được báo cáo trong nhiều giờ sau khi tiêu hóa loại đồ uống này, bao gồm căng thẳng và kích thích quá mức, ở cả vận động viên nam và vận động viên nữ. </p>        <p>Phát hiện này thực sự thú vị bởi vì nó chứng minh được rằng nước uống tăng lực quả thật làm tăng hiệu quả hoạt động thể thao lên đôi chút. Mặt khác, cũng cần phải cân nhắc xem liệu với 7% tốt hơn đó có đáng không khi bạn phải chịu đựng cảm giác bồn chồn, kích thích sau đó, và thêm một đêm mất ngủ với tất cả mệt mỏi khó chịu vào sáng hôm sau hay không? </p>
        <div style="margin: 10px 0; text-align: center;">
            <img src="assets/images/about-img-1.jpg" alt=""/></div>
        <p>Các tác giả nghiên cứu muốn tìm hiểu xem liệu vận động viên, những người thường xuyên tiêu thụ nước uống thể thao, liệu có chịu các lợi ích và tiêu cực tương tự không. Họ đã thực hiện một chương trình nghiên cứu với 90 vận động viên đăng ký, cả nam lẫn nữ, những người bình thường tiêu thụ ít caffein. Một nhóm sử dụng lượng tương đương với ba lon nước tăng lực mua ở cửa hàng, trong khi nhóm kia  chỉ uống một chút giả dược có chứa các thành phần tương tự nhưng không có caffein. Một giờ sau, từng người được đưa vào tham gia buổi tập luyện, sau đó đánh giá hiệu quả hoạt động thể thao. Các nhà nghiên cứu cũng yêu cầu những người tham gia cho biết họ cảm thấy như thế nào khi ở trên sân hoặc sàn tập.</p>        <p>Kết quả: Một mặt, các vận động viên thể hiện tốt hơn từ 3-7% sau khi tiêu thụ các thức uống tăng lực. Những người này cũng cho biết họ cảm thấy cơ bắp mạnh mẽ hơn sau khi sử dụng đồ uống thể thao. Nhưng sau đó các dấu hiệu tiêu cực bắt đầu xuất hiện: 31% đối tượng nghiên cứu - những người đã uống nước tăng lực, bị mất ngủ đêm đó, và các vận động viên nữ cảm thấy mức độ mệt mỏi cao nhất vào sáng hôm sau. Tác dụng phụ khác được báo cáo trong nhiều giờ sau khi tiêu hóa loại đồ uống này, bao gồm căng thẳng và kích thích quá mức, ở cả vận động viên nam và vận động viên nữ. </p>        <p>Phát hiện này thực sự thú vị bởi vì nó chứng minh được rằng nước uống tăng lực quả thật làm tăng hiệu quả hoạt động thể thao lên đôi chút. Mặt khác, cũng cần phải cân nhắc xem liệu với 7% tốt hơn đó có đáng không khi bạn phải chịu đựng cảm giác bồn chồn, kích thích sau đó, và thêm một đêm mất ngủ với tất cả mệt mỏi khó chịu vào sáng hôm sau hay không? </p>
    </div>--%>
    <asp:ListView ID="lstKienThucDetails" runat="server" DataSourceID="odsKienThucDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <h1 class="title mb15">
                <%# Eval("ArticleTitle") %></h1>
            <div class="wrapper-text">
                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsKienThucDetails" runat="server" 
        SelectMethod="ArticleSelectOne" TypeName="TLLib.Article">
        <SelectParameters>
            <asp:QueryStringParameter Name="ArticleID" QueryStringField="ki" 
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="head linenobg mb12">
        <h2 class="title-2">
            Kiến thức bệnh học khác</h2>
    </div>
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
    </div>--%>
    <asp:ListView ID="lstKienThuc" runat="server" DataSourceID="odsKienThuc" EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-lbox">
                <a href='<%# progressTitle(Eval("ArticleTitle")) + "-kci-" + Eval("ArticleCategoryID") + "-ki-" + Eval("ArticleID") + ".aspx" %>'
                    class="news-img">
                    <img alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/dieutriho-img-1.jpg" %>'
                                runat="server" /></a>
                <div class="news-content">
                    <h3 class="news-name">
                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-kci-" + Eval("ArticleCategoryID") + "-ki-" + Eval("ArticleID") + ".aspx" %>'>
                            <%# Eval("ArticleTitle") %></a></h3>
                    <div class="description">
                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 260) %></div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsKienThuc" runat="server" SelectMethod="ArticleSameSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter Name="RerultCount" Type="String" DefaultValue="5" />
            <asp:QueryStringParameter Name="ArticleID" 
                QueryStringField="ki" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
