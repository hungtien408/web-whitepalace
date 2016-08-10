<%@ Control Language="C#" AutoEventWireup="true" CodeFile="form-contact.ascx.cs" Inherits="uc_form_contact" %>
 <div class="container-bg form-contact">
     <div class="container">
         <div class="row">
             <div class="col-md-6">
                  <div class="wrapper-video">
                    <div class="video-details">
                        <div id="jwplayer1">
                        </div>
                          <script type="text/javascript">
                              $(document).ready(function () {
                                  jwplayer('jwplayer1').setup({
                                      "image": "",
                                      //image: '<%# "res/product/" + Eval("ImageName") %>',
                                //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                file: "https://youtu.be/PDZH-x2nNRM",
                                flashplayer: "assets/js/jwplayer.flash.swf",
                                width: '100%',
                                aspectratio: '16:9'
                            });
                            //jwplayer('jwplayer1').play();
                            });
                          </script>
                      </div>
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
                            <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="GỞI YÊU CẦU" ValidationGroup="SendEmail"/>
                        </div>
                    </div>
                 </div>
             </div>
         </div>
     </div>
 </div>