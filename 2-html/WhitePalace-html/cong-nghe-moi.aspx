<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="cong-nghe-moi.aspx.cs" Inherits="phau_thuat_tham_my" %>

<%@ Register TagPrefix="uc1" TagName="formcontact" Src="~/uc/form-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-in">
        <div class="slide-box slide-right">
            <img src="assets/images/banner-pttm-4.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    công nghệ tế bào gốc</h4>
                <div class="description">
                    Công nghệ tế bào gốc mở ra một hứa hẹn có thể chữa được bá bịnh do tác động thay
                    thế hay sửa chữa những tế bào cơ thể ngưng hoạt động hay không làm việc theo đúng
                    như chức năng của chúng, hoặc do bởi các mô cơ thể bị hủy hoại. Ứng dụng công nghệ
                    tế bào gốc trong thẩm mỹ.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-right">
                <div class="cicle">
                    <img src="assets/images/pt-img-13.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-14.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-15.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-16.png" alt="" />
                </div>
            </div>
        </div>
        <div class="slide-box slide-left">
            <img src="assets/images/banner-pttm-5.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    điều trị công nghệ cao</h4>
                <div class="description">
                    Tế bào tươi Triple White” là một phương pháp nuôi trắng da mặt an toàn, mở ra cánh
                    cửa chống chọi lại sự lão hóa, tái tạo sức sống mạnh mẽ cho làn da của những người
                    trên 30 tuổi.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-left">
                <div class="cicle">
                    <img src="assets/images/pt-img-17.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-18.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-19.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-20.png" alt="" />
                </div>
            </div>
        </div>
        <div class="slide-box slide-right">
            <img src="assets/images/banner-pttm-6.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    công nghệ độc quyền của White Palace</h4>
                <div class="description">
                    Cùng đánh thức vẻ đẹp và chạm tới ước mơ làn da trắng sáng, trong suốt, rạng rỡ
                    bằng công nghệ làm trắng da độc quyền của White Palace.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-right">
                <div class="cicle">
                    <img src="assets/images/pt-img-21.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-22.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-23.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-24.png" alt="" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" runat="Server">
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>