<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSite" Runat="Server">
     <div id="site-details">
        <a id="A1" href="~/" runat="server">Trang chủ </a>/ <a href="phau-thuat-tham-my.aspx">
           Phẫu thuật thẩm mỹ</a>/ <span>Mắt</span>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphColAside" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphColMain" Runat="Server">
    <div class="quick">
        <div class="quick-wrapper">
            <div class="quick_list">
                <ul>
                    <li class="q-list q-list-1"><a href="#">
                        <img src="assets/images/uudiem.png" alt="" />ưu điểm</a></li>
                    <li class="q-list q-list-2"><a href="#">
                        <img src="assets/images/quytrinh.png" alt="" />quy trình</a></li>
                    <li class="q-list-3"><a href="hinh-anh.aspx">
                        <img src="assets/images/hinhanh.png" alt="" />hình ảnh</a></li>
                    <li class="q-list-4"><a href="viedeo.aspx">
                        <img src="assets/images/ico-video.png" alt="" />video</a></li>
                    <li class="q-list q-list-5"><a href="#"><img src="assets/images/healthy.png" alt="" />CS sau khi điều trị</a></li>
                    <li class="q-list q-list-6"><a href="#">
                        <img src="assets/images/chi-phi.png" alt="" />giá</a></li>
                    <li class="q-list q-list-7"><a href="tel:0933866661">Hotline
                        <p>0933 866 661</p></a></li>
                </ul>
            </div>
            <div class="quick_content">
                <div class="q-con q-con-1">
                    <div class="q-box">
                        <h2>ƯU ĐIỂM</h2>
                        <div class="q-title">DỊCH VỤ THẨM MỸ MŨI</div>
                        <div class="q-content">
                            <p>Ưu điểm 1</p>
                            <p>Ưu điểm 2</p>
                            <p>Ưu điểm 3</p>
                            <p>Ưu điểm 4</p>
                            <p>Ưu điểm 5</p>
                            <p>Ưu điểm 6</p>
                        </div>
                    </div>
                </div>
                <div class="q-con q-con-2">
                    <div class="q-box">
                        <h2>QUY TRÌNH</h2>
                        <div class="q-title">DỊCH VỤ THẨM MỸ MŨI</div>
                        <div class="q-content">
                            <p>Bước 1</p>
                            <p>Bước 2</p>
                            <p>Bước 3</p>
                            <p>Bước 4</p>
                            <p>Bước 5</p>
                            <p>Bước 6</p>
                        </div>
                    </div>
                </div>
                <%--<div class="q-con q-con-3">
                    3
                </div>
                <div class="q-con q-con-4">
                    4
                </div>--%>
                <div class="q-con q-con-5">
                   <div class="q-box">
                        <h2>CS SAU ĐIỀU TRỊ</h2>
                        <div class="q-title">DỊCH VỤ THẨM MỸ MŨI</div>
                        <div class="q-content">
                            <p>Bước 1</p>
                            <p>Bước 2</p>
                            <p>Bước 3</p>
                            <p>Bước 4</p>
                            <p>Bước 5</p>
                            <p>Bước 6</p>
                        </div>
                    </div>
                </div>
                <div class="q-con q-con-6">
                    <div class="q-box">
                        <h2>CHI PHÍ</h2>
                        <div class="q-title">DỊCH VỤ THẨM MỸ MŨI</div>
                        <div class="q-content">
                            <p><span style="color:#767b84;">Nâng mũi</span><span style="color:#0b79ab;"> Hàn Quốc:</span><span style="color:#f28400; font-weight:700;"> 10 Triệu</span></p>
                            <p><span style="color:#767b84;">Nâng mũi</span><span style="color:#0b79ab;"> Hàn Quốc:</span><span style="color:#f28400; font-weight:700;"> 20 Triệu</span></p>
                            <p><span style="color:#767b84;">Nâng mũi</span><span style="color:#0b79ab;"> Hàn Quốc:</span><span style="color:#f28400; font-weight:700;"> 30 Triệu</span></p>
                        </div>
                    </div>
                </div>
                <%--<div class="q-con q-con-7">
                    7
                </div>--%>
                <a href="#" class="close_q"><img src="assets/images/btn_q_close.gif" alt="QUICK"></a>
            </div>
        </div>
    </div>
    <div class="servicer-main list-tab">
        <ul>
            <li>
                <div class="tab-news-img">
                    <a href="dich-vu-chi-tiet.aspx"><img src="assets/images/news5.jpg" /></a>
                </div>
                <div class="tab-news-text">
                    <div class="tab-name"><a href="dich-vu-chi-tiet.aspx">Mắt 1</a></div>
                    <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                </div>
            </li>
            <li>
                <div class="tab-news-img">
                    <a href="dich-vu-chi-tiet.aspx"><img src="assets/images/about3.jpg" /></a>
                </div>
                <div class="tab-news-text">
                    <div class="tab-name"><a href="dich-vu-chi-tiet.aspx">Mắt 2</a></div>
                    <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                </div>
            </li>
                <li>
                <div class="tab-news-img">
                    <a href="dich-vu-chi-tiet.aspx"><img src="assets/images/img3.jpg" /></a>
                </div>
                <div class="tab-news-text">
                    <div class="tab-name"><a href="dich-vu-chi-tiet.aspx">Mắt 3</a></div>
                    <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                </div>
            </li>
            <li>
                <div class="tab-news-img">
                    <a href="dich-vu-chi-tiet.aspx"><img src="assets/images/news6.jpg" /></a>
                </div>
                <div class="tab-news-text">
                    <div class="tab-name"><a href="dich-vu-chi-tiet.aspx">Mắt 4</a></div>
                    <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>

