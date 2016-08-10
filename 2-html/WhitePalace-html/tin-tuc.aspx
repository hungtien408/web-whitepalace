<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<%@ Register Src="~/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<%@ Register TagPrefix="uc2" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" Runat="Server">
    <div class="main-in">
        <uc2:bannersub ID="bannersub1" runat="server"/>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="news-main">
        <div class="container">
            <h3 class="div-title">TIN TỨC NỔI BẬT</h3>
            <div class="line-box"><img src="assets/images/line-box.png" /></div>
               <div class="slider-tree">
                    <div class="slide ">
                         <div class="news-pic">
                            <div class="news-img">
                                <a href="#"><img src="assets/images/news1.jpg" /></a>
                            </div>
                            <div class="news-name"><a href="#">Chương trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                        </div>
                    </div>
                   <div class="slide ">
                         <div class="news-pic">
                            <div class="news-img">
                                <a href="#"><img src="assets/images/news2.jpg" /></a>
                            </div>
                            <div class="news-name"><a href="#">‘Bài học’ của doanh nhân Việt chật vật trong 10 năm chữa nám.</a> </div>
                        </div>
                    </div>
                   <div class="slide ">
                         <div class="news-pic">
                            <div class="news-img">
                                <a href="#"><img src="assets/images/news3.jpg" /></a>
                            </div>
                            <div class="news-name"><a href="#">Trắng bật 3 tông, da sạch độc tố chỉ sau chưa đầy 1 tháng.</a> </div>
                        </div>
                    </div>
                    <div class="slide ">
                         <div class="news-pic">
                            <div class="news-img">
                                <a href="#"><img src="assets/images/news4.jpg" /></a>
                            </div>
                            <div class="news-name"><a href="#">Độc chiêu giảm 5kg diện bikini đón hè.</a> </div>
                        </div>
                    </div>
                    <div class="slide ">
                         <div class="news-pic">
                            <div class="news-img">
                                <a href="#"><img src="assets/images/news1.jpg" /></a>
                            </div>
                            <div class="news-name"><a href="#">Chương trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                        </div>
                    </div>
                </div>
                 <div class="control-pager">
                    <a href="#" class="slidePrevo fa fa-angle-left"></a>
                    <a href="#" class="slideNexto fa fa-angle-right"></a>
                </div>
                <div class="news-colmain">
                    <div class="news-colleft desktop-992">
                        <ul class="list-nav">
                           <li>
                               <div class="nav-box">
                                   <div class="hex-box">
                                       <div class="corner-1">
                                           <div class="corner-2">
                                               <div class="corner-3">
                                                   <div class="nav-in">
                                                       <a href="#"><span class="box-frame"></span>
                                                           <img src="assets/images/aside-img-1.png" alt="" />
                                                       </a>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="nav-content text-uppercase">
                                   Tạo hình mặt độn cằm V-Line
                               </div>
                           </li>
                           <li>
                               <div class="nav-box">
                                   <div class="hex-box">
                                       <div class="corner-1">
                                           <div class="corner-2">
                                               <div class="corner-3">
                                                   <div class="nav-in">
                                                       <a href="#"><span class="box-frame"></span>
                                                           <img src="assets/images/aside-img-2.png" alt="" />
                                                       </a>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="nav-content text-uppercase">
                                   Tạo hình mặt độn cằm V-Line
                               </div>
                           </li>
                            <li>
                               <div class="nav-box">
                                   <div class="hex-box">
                                       <div class="corner-1">
                                           <div class="corner-2">
                                               <div class="corner-3">
                                                   <div class="nav-in">
                                                       <a href="#"><span class="box-frame"></span>
                                                           <img src="assets/images/aside-img-3.png" alt="" />
                                                       </a>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="nav-content text-uppercase">
                                   Nhuộm trắng siêu tốc 360 độ
                               </div>
                           </li>
                       </ul>
                       <div class="aside-hotline">
                           <strong>0909 888 999</strong>
                       </div>
                    </div>
                    <div class="news-colright">
                        <div class="news-head">
                            <h4>BÍ QUYẾT KHỎE VÀ ĐẸP</h4>
                            <div class="control-pager1">
                                <a href="#" class="slidePrevo1 fa fa-angle-left"></a>
                                <a href="#" class="slideNexto1 fa fa-angle-right"></a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="slider-tree1">
                            <div class="slide ">
                                 <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news7.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">Các phương pháp làm trắng da được ưa chuộng nhất năm 2016.</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news8.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">Cách giảm cân an toàn và hiệu quả nhất theo Khoa học</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news9.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">Làm trắng da toàn thân tại nhà bằng thực phẩm tự nhiên</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news10.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">Những lưu ý khi sử dụng dịch vụ tắm trắng tại Spa</a> </div>
                                </div>
                            </div>
                             <div class="slide ">
                                 <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news1.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news1.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news1.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                                </div>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href="#"><img src="assets/images/news1.jpg" /></a>
                                    </div>
                                    <div class="news-name"><a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a> </div>
                                </div>
                            </div>
                         </div>
                    </div>
                </div>
            <div class="clearfix"></div>
               <div class="tab-news">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">BẢN TIN SAO</a></li>
                        <li role="presentation"><a href="#tab2"role="tab" data-toggle="tab">CHUYỆN THẬT KHÁCH HÀNG</a></li>
                  </ul>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="tab1">
                            <div class="list-tab">
                                <ul>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news5.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/about3.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                     <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/img3.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news6.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                     <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news5.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news6.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="tab2">
                           <div class="list-tab">
                                <ul>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news3.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news4.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                     <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/about1.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news6.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                     <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news5.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Diệu kế giảm cân sau sinh siêu tốc của Thu Minh</a></div>
                                            <div class="description">Nhờ áp dụng phương pháp giảm cân hiện đại nhất từ Mỹ, nữ ca sĩ “Đường cong” đã nhanh chóng lấy lại được vóc dáng sexy, bốc lửa...</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href="#"><img src="assets/images/news6.jpg" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name"><a href="#">Quỳnh Nga khoe da trắng hồng trên đất Nhật</a></div>
                                            <div class="description">‘Cá sấu chúa’ Quỳnh Nga tự tin khoe làn da trắng hồng, khỏe mạnh ngay cả trong tiết trời lạnh tê tái.  Không chỉ tỏa sáng ở các sự kiện trong nước...</div>
                                        </div>
                                    </li>
                                </ul>
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
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>

