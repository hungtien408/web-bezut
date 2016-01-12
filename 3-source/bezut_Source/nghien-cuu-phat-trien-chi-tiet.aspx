<%@ Page Title="" Language="C#" MasterPageFile="~/site-news.master" AutoEventWireup="true"
    CodeFile="nghien-cuu-phat-trien-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headno">
        <h1 class="title text-uppercase">
            <asp:Label ID="lblTitleProduct" runat="server"></asp:Label></h1>
    </div>
    <%--<div class="wrapper-text">
        <h2>Tác động đáng sợ của nước tăng lực đối với người tập thể thao</h2>
        <p>Để thư giãn và làm đầy năng lượng của bạn thông qua chế độ nghỉ ngơi và ăn uống lành mạnh, thay vì phụ thuộc vào nước tăng lực đóng lon. Nếu bạn vẫn tin rằng uống nước. Nếu bạn vẫn tin rằng uống nước tăng lực trước khi thi đấu hay sau khi chơi thể thao là một ý tưởng thông minh, hãy lưu ý điều này: Một nghiên cứu mới trên tạp chí Dinh dưỡng của Anh cho thấy, mặc dù các đồ uống chứa caffein này giúp các vận động viên cảm thấy mạnh mẽ và nâng cao hiệu suất hoạt động một chút, nhưng chúng cũng đồng thời mang lại các chứng mất ngủ, căng thẳng, và kích thích quá mức. </p>
        <div style="margin: 10px 0; text-align: center;">
            <img src="assets/images/about-img-1.jpg" alt=""/></div>
        <p>Các tác giả nghiên cứu muốn tìm hiểu xem liệu vận động viên, những người thường xuyên tiêu thụ nước uống thể thao, liệu có chịu các lợi ích và tiêu cực tương tự không. Họ đã thực hiện một chương trình nghiên cứu với 90 vận động viên đăng ký, cả nam lẫn nữ, những người bình thường tiêu thụ ít caffein. Một nhóm sử dụng lượng tương đương với ba lon nước tăng lực mua ở cửa hàng, trong khi nhóm kia  chỉ uống một chút giả dược có chứa các thành phần tương tự nhưng không có caffein. Một giờ sau, từng người được đưa vào tham gia buổi tập luyện, sau đó đánh giá hiệu quả hoạt động thể thao. Các nhà nghiên cứu cũng yêu cầu những người tham gia cho biết họ cảm thấy như thế nào khi ở trên sân hoặc sàn tập.</p>
        <p>Kết quả: Một mặt, các vận động viên thể hiện tốt hơn từ 3-7% sau khi tiêu thụ các thức uống tăng lực. Những người này cũng cho biết họ cảm thấy cơ bắp mạnh mẽ hơn sau khi sử dụng đồ uống thể thao. Nhưng sau đó các dấu hiệu tiêu cực bắt đầu xuất hiện: 31% đối tượng nghiên cứu - những người đã uống nước tăng lực, bị mất ngủ đêm đó, và các vận động viên nữ cảm thấy mức độ mệt mỏi cao nhất vào sáng hôm sau. Tác dụng phụ khác được báo cáo trong nhiều giờ sau khi tiêu hóa loại đồ uống này, bao gồm căng thẳng và kích thích quá mức, ở cả vận động viên nam và vận động viên nữ. </p>
        <p>Phát hiện này thực sự thú vị bởi vì nó chứng minh được rằng nước uống tăng lực quả thật làm tăng hiệu quả hoạt động thể thao lên đôi chút. Mặt khác, cũng cần phải cân nhắc xem liệu với 7% tốt hơn đó có đáng không khi bạn phải chịu đựng cảm giác bồn chồn, kích thích sau đó, và thêm một đêm mất ngủ với tất cả mệt mỏi khó chịu vào sáng hôm sau hay không? </p>
        <div style="margin: 10px 0; text-align: center;">
            <img src="assets/images/about-img-1.jpg" alt=""/></div>
        <p>Các tác giả nghiên cứu muốn tìm hiểu xem liệu vận động viên, những người thường xuyên tiêu thụ nước uống thể thao, liệu có chịu các lợi ích và tiêu cực tương tự không. Họ đã thực hiện một chương trình nghiên cứu với 90 vận động viên đăng ký, cả nam lẫn nữ, những người bình thường tiêu thụ ít caffein. Một nhóm sử dụng lượng tương đương với ba lon nước tăng lực mua ở cửa hàng, trong khi nhóm kia  chỉ uống một chút giả dược có chứa các thành phần tương tự nhưng không có caffein. Một giờ sau, từng người được đưa vào tham gia buổi tập luyện, sau đó đánh giá hiệu quả hoạt động thể thao. Các nhà nghiên cứu cũng yêu cầu những người tham gia cho biết họ cảm thấy như thế nào khi ở trên sân hoặc sàn tập.</p>
        <p>Kết quả: Một mặt, các vận động viên thể hiện tốt hơn từ 3-7% sau khi tiêu thụ các thức uống tăng lực. Những người này cũng cho biết họ cảm thấy cơ bắp mạnh mẽ hơn sau khi sử dụng đồ uống thể thao. Nhưng sau đó các dấu hiệu tiêu cực bắt đầu xuất hiện: 31% đối tượng nghiên cứu - những người đã uống nước tăng lực, bị mất ngủ đêm đó, và các vận động viên nữ cảm thấy mức độ mệt mỏi cao nhất vào sáng hôm sau. Tác dụng phụ khác được báo cáo trong nhiều giờ sau khi tiêu hóa loại đồ uống này, bao gồm căng thẳng và kích thích quá mức, ở cả vận động viên nam và vận động viên nữ. </p>
        <p>Phát hiện này thực sự thú vị bởi vì nó chứng minh được rằng nước uống tăng lực quả thật làm tăng hiệu quả hoạt động thể thao lên đôi chút. Mặt khác, cũng cần phải cân nhắc xem liệu với 7% tốt hơn đó có đáng không khi bạn phải chịu đựng cảm giác bồn chồn, kích thích sau đó, và thêm một đêm mất ngủ với tất cả mệt mỏi khó chịu vào sáng hôm sau hay không? </p>
    </div>--%>
    <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-text">
                <h2>
                    <%# Eval("ProductName") %></h2>
                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ni" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="wrapper-comment">
        <%--<img src="assets/images/comment-i.jpg" alt="" />--%>
        <%--<div class="fb-comments" data-href="http://developers.facebook.com/docs/plugins/comments/" data-numposts="2"></div>--%>
        <div class="fb-comments" data-href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/", System.StringComparison.Ordinal) + 1) %>'
            data-width="675" data-numposts="5" data-colorscheme="light">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
