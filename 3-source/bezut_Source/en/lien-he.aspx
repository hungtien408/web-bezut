<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=vi"></script>
    <script src="../assets/js/google-mapsvn.js" type="text/javascript"></script>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $(".address-contact h4 > a").click(function () {
                var idmap = $(this).attr("href");
                var offset = $(idmap).offset();
                $("html, body").stop(true, true).animate({ scrollTop: (offset.top - 80) }, '500');
            });
        });
    </script>--%>
    <title>Liên hệ</title>
    <meta name="description" content="Liên hệ" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a id="A1" class="home" href="~/" runat="server">Home page </a><span class="icon-caret-right">
            </span><span>Contact us</span>
        </div>
        <div class="wrapper-contact">
            <div class="contact-address">
                <h2 class="title-2">Contact us</h2>
                <div class="address-contact">
                    <div class="head-con">
                        <div class="logoc">
                            <img src="../assets/images/contact/logo-c-1.jpg" alt=""/></div>
                        <div class="head-content">
                            <p>Distributors North</p>
                            <h4>PHARMACEUTICAL CORPORATION VINACARE</h4>
                        </div>
                    </div>
                    
                    <div class="address-content">
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-1.png" alt="" /></span><strong>Address:</strong>
                            <span class="contents">Số 18, ngách 19/15 Kim Đồng, TP. Hà Nội</span>
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-2.png" alt="" /></span> <strong>Phone:</strong>
                            (04) 3664 9263 
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-3.png" alt="" /></span> <strong>Fax:</strong>
                            (04) 3664 9265
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-4.png" alt="" /></span> <strong>Email:</strong>
                            <a href="mailto:vinacarepharma@gmail.com">vinacarepharma@gmail.com</a>
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-5.png" alt="" /></span> <strong>Web:</strong>
                            <a href="http://www.vinacare.vn" target="_blank">www.vinacare.vn </a>
                        </p>
                    </div>
                </div>
                <div class="address-contact">
                    <div class="head-con">
                        <div class="logoc">
                            <img src="../assets/images/contact/logo-c-2.jpg" alt=""/></div>
                        <div class="head-content">
                            <p>Distributors South</p>
                            <h4>CORPORATION O2PHARM</h4>
                        </div>
                    </div>
                    
                    <div class="address-content">
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-1.png" alt="" /></span><strong>Address:</strong>
                            <span class="contents">312/10/15 Trinh Dinh Trong Street, Hoa Thanh Ward, Tan Phu District, Ho Chi Minh City</span>
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-2.png" alt="" /></span> <strong>Phone:</strong>
                            (08) 3976 0728 - (08) 3976 0729
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-3.png" alt="" /></span> <strong>Fax:</strong>
                            (08) 3976 0730
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-4.png" alt="" /></span> <strong>Email:</strong>
                            <a href="mailto:vinacarepharma@gmail.com">vinacarepharma@gmail.com</a>
                        </p>
                        <p>
                            <span class="icon-p">
                                <img src="../assets/images/contact/icon-c-5.png" alt="" /></span> <strong>Web:</strong>
                            <a href="http://www.vinacare.vn" target="_blank">www.vinacare.vn</a>
                        </p>
                    </div>
                </div>
                <h2 class="title text-uppercase">
                    Mailing</h2>
                <p class="node">
                    Please leave your information and your request so that we can respond in the shortest time.</p>
                <div class="row">
                    <div class="form-contact">
                        <label class="contact-lb">
                            Fullname</label>
                        <div class="contact-input">
                            <asp:TextBox CssClass="form-control inputem corner" ID="txtHoTen" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtHoTen_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Fullname..." TargetControlID="txtHoTen">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtHoTen" ErrorMessage="Information required!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-contact">
                        <label class="contact-lb">
                            Phone</label>
                        <div class="contact-input">
                            <asp:TextBox CssClass="form-control inputem corner" ID="txtPhone" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Phone..." TargetControlID="txtPhone">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" Display="Dynamic"
                                runat="server" ControlToValidate="txtPhone" ValidationGroup="SendEmail" ErrorMessage="Information required!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-contact">
                        <label class="contact-lb">
                            Email</label>
                        <div class="contact-input">
                            <asp:TextBox CssClass="form-control inputem corner" ID="txtEmail" runat="server"
                                Text="Email..."></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Email..." TargetControlID="txtEmail">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                                Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-contact text-area">
                        <label class="contact-lb mt10">
                            Content</label>
                        <div class="contact-input">
                            <asp:TextBox CssClass="form-control inputem corner" ID="txtNoiDung" runat="server"
                                TextMode="MultiLine"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Content..." TargetControlID="txtNoiDung">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-contact">
                        <label class="contact-lb">
                            Code</label>
                        <div class="contact-input">
                            <div class="codes">
                                <asp:TextBox ID="txtVerifyCode" CssClass="form-control corner" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                    Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="SendEmail"
                                    runat="server" Display="Dynamic" ErrorMessage="Code: not correct."
                                    CaptchaLinkButtonText="Refesh" CssClass="capcha" EnableRefreshImage="True">
                                    <CaptchaImage RenderImageOnly="True" Width="125" Height="35" BackgroundNoise="High"
                                        BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" />
                                </asp:RadCaptcha>
                            </div>
                        </div>
                    </div>
                    <div class="form-contact">
                        <div class="wrap-btn">
                            <div class="text-input">
                                <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-contact">
                        <div class="wrap-btn">
                            <asp:Button ID="btGui" CssClass="btn-send corner" runat="server" Text="Send mail"
                                ValidationGroup="SendEmail" OnClick="btGui_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact-map">
                <div id="mapbox-1" class="wrap-mapbox">
                    <i>Enter your address below to find your way</i>
                    <div class="map-title">
                        <div class="search-map">
                            <input id="getdiretion" class="getdiretion" type="button" onclick="calcRoute();"
                                value="Tìm đường đi" />
                            <div class="search-inmap">
                                <input id="start1" class="text-search" type="text" value=" Số 18, ngách 19/15 Kim Đồng, TP. Hà Nội" /></div>
                        </div>
                        <h3 class="title-b">VINACARE<span class="arrow-left"></span></h3>
                    </div>
                    <div class="map-content">
                        <div id="map1" class="mapbox">
                        </div>
                    </div>
                    <div id="directionsPanel1">
                        <i>Drag the blue line on the map to change route</i>
                    </div>
                </div>
                <div id="mapbox-2" class="wrap-mapbox">
                    <i>Enter your address below to find your way</i>
                    <div class="map-title">
                        <div class="search-map">
                            <input id="getdiretion2" class="getdiretion" type="button" onclick="calcRoute2();"
                                value="Tìm đường đi" />
                            <div class="search-inmap">
                                <input id="start2" class="text-search" type="text" value=" 312/10/15 Trinh Dinh Trong Street, Hoa Thanh Ward, Tan Phu District, Ho Chi Minh City" /></div>
                        </div>
                        <h3 class="title-b">O2PHARM<span class="arrow-left"></span></h3>
                    </div>
                    <div class="map-content">
                        <div id="map2" class="mapbox">
                        </div>
                    </div>
                    <div id="directionsPanel2">
                        <i>Drag the blue line on the map to change route</i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
