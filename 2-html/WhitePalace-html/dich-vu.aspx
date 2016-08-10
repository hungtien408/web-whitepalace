<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>
<%@ Register Src="~/uc/banner-sub.ascx" TagName="bannersub" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
    <div class="main-in">
        <uc2:bannersub ID="bannersub1" runat="server"/>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="container">
            <div id="isotopelist" class="row ser-wrapper">
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-1">
                            <img src="assets/images/ser-img-1.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Phẩu thuật mặt <span>Tạo khuôn mặt V-Line</span></a></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-2">
                            <img src="assets/images/ser-img-2.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Phẩu thuật hàm <span>Xử lí hàm Hô - Móm</span></a></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-3">
                            <img src="assets/images/ser-img-3.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Phẩu thuật mũi <span>Nâng mũi S-Line</span></a></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-4">
                            <img src="assets/images/ser-img-4.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Thu gọn mũi <span>Chỉnh sửa cánh mũi thon gọn</span></a></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-5">
                            <img src="assets/images/ser-img-5.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Phẩu thuật mắt <span>Cắt mí mắt</span></a></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-6 element-item">
                    <div class="box-ser">
                        <a href="#" class="ser-img cl-6">
                            <img src="assets/images/ser-img-6.jpg" alt="" /></a>
                        <h3 class="ser-name text-uppercase">
                            <a href="#">Chữa sụp mí mắt <span>Kéo căng mí mắt</span></a></h3>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>
