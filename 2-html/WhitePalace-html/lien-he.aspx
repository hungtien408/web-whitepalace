<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact-main-bg">
        <div class="container">
            <div class="contact-bg">
                <h3 class="div-title">LIÊN HỆ VỚI CHÚNG TÔI</h3>
                <div class="line-box"><img src="assets/images/line-box.png" /></div>
                <div class="contact-text">
                    <div class="row">
             <div class="col-md-6">
                 <div class="wrapper-contact">
                     <h3>CHI NHÁNH TP.HCM:</h3>
                     <p>Địa chỉ: 111 Tên Lửa, P. Bình Trị Đông B, Q. Bình Tân</p>
                     <p>Hotline: (848) 3958666 - 0909 858 788</p>
                     <p>Email: hotro@whitepalace.com</p><br />
                     <h3>THỜI GIAN LÀM VIỆC</h3>
                     <p>Thứ 2 - CN: 7:00 AM - 9:00 PM (Kể cả các ngày lễ)</p><br />
                     <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi yêu cầu cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
                 </div>
             </div>
             <div class="col-md-6">
                 <div class="send-form shake">
                     <h3>GỬI YÊU CẦU</h3>
                     <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <%--<label class="contact-lb">Họ &amp; Tên</label>--%>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtHoTen" CssClass="contact-textbox" runat="server" placeholder="Họ tên"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtHoTen" ErrorMessage="Required Information!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                              <div class="contact-w">
                                <%--<label class="contact-lb">Họ &amp; Tên</label>--%>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server" placeholder="Điện thoại"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone" ErrorMessage="Required Information!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                          <div class="col-xs-12">
                         <div class="contact-w">
                                <%--<label class="contact-lb">Email</label>--%>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server" placeholder="Email address"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                        ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Required Information!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                        runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Wrong email format!"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                           </div>
                     </div>
                    <div class="contact-w">
                        <%--<label class="contact-lb">Lời nhắn</label>--%>
                        <div class="contact-input">
                            <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Nội dung"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                ErrorMessage="Required Information!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <%--<asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Send" ValidationGroup="SendEmail" OnClick="btGui_Click" />--%>
                            <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="GỬI YÊU CẦU" ValidationGroup="SendEmail"/>
                        </div>
                    </div>
                 </div>
             </div>
         </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>

