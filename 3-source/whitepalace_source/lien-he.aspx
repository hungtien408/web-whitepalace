﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="contact-main-bg">
        <div class="container">
            <div class="contact-bg">
                <h3 class="div-title">
                    LIÊN HỆ VỚI CHÚNG TÔI</h3>
                <div class="line-box">
                    <img src="assets/images/line-box.png" /></div>
                <div class="contact-text">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:ListView ID="lstInfo" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="wrapper-contact">
                                        <h3>
                                            TRỤ SỞ CHÍNH:</h3>
                                        <p>
                                            Địa chỉ: <%# Eval("ArticleTitle") %></p>
                                        <p>
                                            Hotline: <%# Eval("Tag") %></p>
                                        <p>
                                            Email: <a href='<%# "mailto:" + Eval("MetaDescription") %>'><%# Eval("MetaDescription") %></a></p>
                                        <br />
                                        <h3>
                                            CHI NHÁNH USA:</h3>
                                        <p>
                                            Địa chỉ: <%# Eval("ArticleTitleEn") %></p>
                                        <p>
                                            Hotline: <%# Eval("TagEn") %></p>
                                        <p>
                                            Email: <a href='<%# "mailto:" + Eval("MetaDescriptionEn") %>'><%# Eval("MetaDescriptionEn") %></a></p>
                                        <br />
                                        <h3>
                                            THỜI GIAN LÀM VIỆC</h3>
                                        <p>
                                            Thứ 2 - CN: 8:00 AM - 8:00 PM (Kể cả các ngày lễ)</p>
                                        <br />
                                        <p>
                                            Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi yêu cầu cho chúng tôi
                                            theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của
                                            quý khách.</p>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsInfo" runat="server" SelectMethod="ArticleSelectAll"
                                TypeName="TLLib.Article">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                    <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ArticleTitle" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="col-md-6">
                            <div class="send-form shake contactbg">
                                <h3>
                                    GỬI YÊU CẦU</h3>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <%--<label class="contact-lb">Họ &amp; Tên</label>--%>
                                            <div class="contact-input">
                                                <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                                <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                                    WatermarkText="Họ tên" TargetControlID="txtFullName">
                                                </asp:TextBoxWatermarkExtender>
                                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                                    Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                                    ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <%--<label class="contact-lb">Họ &amp; Tên</label>--%>
                                            <div class="contact-input">
                                                <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                                <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                                                    WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                                </asp:TextBoxWatermarkExtender>
                                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                                    Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone" ErrorMessage="Information required!"
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
                                                <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                                <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                                    WatermarkText="Email" TargetControlID="txtEmail">
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
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <%--<label class="contact-lb">Lời nhắn</label>--%>
                                    <div class="contact-input">
                                        <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                            WatermarkText="Nội dung" TargetControlID="txtNoiDung">
                                        </asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                            ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                            ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <div class="contact-input">
                                                <div class="wcodes">
                                                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                                    <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                                        Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                                    </asp:TextBoxWatermarkExtender>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <div class="contact-input">
                                                <div class="wcodes">
                                                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                                        Display="Dynamic">
                                                        <CaptchaImage Height="35" Width="135" RenderImageOnly="True" />
                                                    </asp:RadCaptcha>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <div class="contact-btn">
                                        <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="GỬI YÊU CẦU" ValidationGroup="SendEmail"
                                            OnClick="btGui_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="map-contact"><div id="mapshow"> </div></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>
