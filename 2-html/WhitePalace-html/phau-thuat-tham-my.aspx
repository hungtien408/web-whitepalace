<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="phau-thuat-tham-my.aspx.cs" Inherits="phau_thuat_tham_my" %>

<%@ Register TagPrefix="uc1" TagName="formcontact" Src="~/uc/form-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-in">
        <div class="slide-box slide-right">
            <img src="assets/images/banner-pttm-1.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    tạo hình khuôn mặt</h4>
                <div class="description">
                    Đến White Palace, bạn sẽ được trải nghiệm công nghệ độn cằm đạt chuẩn Hàn Quốc với
                    các chuyên gia hàng đầu Việt Nam, cam kết mang lại cho bạn chiếc cằm chuẩn V-line,
                    an toàn tuyệt đối.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-right">
                <div class="cicle">
                    <img src="assets/images/pt-img-1.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-2.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-3.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-4.png" alt="" />
                </div>
            </div>
        </div>
        <div class="slide-box slide-left">
            <img src="assets/images/banner-pttm-2.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    tạo hình cơ thể</h4>
                <div class="description">
                    Với đội ngũ y bác sĩ thẩm mĩ giàu kinh nghiệm hàng đầu Việt Nam, các chị em phụ
                    nữ sẽ dễ dàng sở hữu vòng một Y-line gợi cảm hài hòa với cơ thể. Một vùng eo phẳng
                    lì, đường cong s-line quyến rũ, gợi cảm.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-left">
                <div class="cicle">
                    <img src="assets/images/pt-img-5.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-6.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-7.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-8.png" alt="" />
                </div>
            </div>
        </div>
        <div class="slide-box slide-right">
            <img src="assets/images/banner-pttm-3.png" alt="" />
            <div class="slide-content">
                <h4 class="text-uppercase">
                    phun xăm hiện đại</h4>
                <div class="description">
                    Với công nghệ phun thêu hiện đại - phun mí Baby Doll bằng mực chiết xuất thiên nhiên
                    không độc hại, không chuyển màu, không gây sưng, phái đẹp giờ đây không cần mất
                    thời gian quá nhiều cho việc trang điểm, mà vẫn có một đôi mắt cuốn hút với viền
                    mí đẹp tự nhiên.
                </div>
                <div class="more-details">
                    <a class="text-center" href="#">Xem thêm</a></div>
            </div>
            <div class="slide-cicle cicle-right">
                <div class="cicle">
                    <img src="assets/images/pt-img-9.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-10.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-11.png" alt="" />
                </div>
                <div class="cicle">
                    <img src="assets/images/pt-img-12.png" alt="" />
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