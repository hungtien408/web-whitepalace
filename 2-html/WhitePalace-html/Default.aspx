<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>WP</title>
    <meta name="description" content="WP" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
    <div id="banner" class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">
            <div class="slide">
                <img src="assets/images/slider1.jpg" alt="" title="#htmlcaption1" />
            </div>
            <div class="slide">
                <img src="assets/images/slider2.jpg" alt="" title="#htmlcaption2" />
            </div>
            <div class="slide">
                <img src="assets/images/slider3.jpg" alt="" title="#htmlcaption3" />
            </div>
        </div>
        <div id="htmlcaption1" class="nivo-html-caption">
            <div class="banner-text">
                <div class="text-title">
                    Relax with our</div>
                <div class="text-name">
                    60 MINUTE MASSAGE<br />
                    PACKAGES</div>
                <div class="book">
                    <a href="#">Book a massage</a></div>
            </div>
        </div>
        <div id="htmlcaption2" class="nivo-html-caption">
            <div class="banner-text">
                <div class="text-title">
                    Relax with our2</div>
                <div class="text-name">
                    60 MINUTE MASSAGE<br />
                    PACKAGES</div>
                <div class="book">
                    <a href="#">Book a massage</a></div>
            </div>
        </div>
        <div id="htmlcaption3" class="nivo-html-caption">
            <div class="banner-text">
                <div class="text-title">
                    Relax with our3</div>
                <div class="text-name">
                    60 MINUTE MASSAGE<br />
                    PACKAGES</div>
                <div class="book">
                    <a href="#">Book a massage</a></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg">
        <div class="news-bg">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-3 ico-slide">
                    <div class="pro-box">
                        <img src="assets/images/img1.jpg" />
                        <div class="pro-content">
                            <div class="pro-text">
                                <h2>
                                    Bí quyết làm trắng da an toàn với sữa đậu nành</h2>
                            </div>
                            <div class="view-details">
                                <a href="#"><span class="fa fa-angle-right"></span></a>
                            </div>
                            <a href="#">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="pro-box">
                        <img src="assets/images/img2.jpg" />
                        <div class="pro-content">
                            <div class="pro-text">
                                <h2>
                                    6 cách giảm cân sau khi sinh hiệu quả và an toàn</h2>
                            </div>
                            <div class="view-details">
                                <a href="#"><span class="fa fa-angle-right"></span></a>
                            </div>
                            <a href="#">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="pro-box">
                        <img src="assets/images/img3.jpg" />
                        <div class="pro-content">
                            <div class="pro-text">
                                <h2>
                                    Những lưu ý khi sử dụng dịch vụ tắm trắng tại Spa</h2>
                            </div>
                            <div class="view-details">
                                <a href="#"><span class="fa fa-angle-right"></span></a>
                            </div>
                            <a href="#">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="pro-box">
                        <img src="assets/images/img4.jpg" />
                        <div class="pro-content">
                            <div class="pro-text">
                                <h2>
                                    Cách dưỡng da toàn thân nhanh nhất của Nhật Bản</h2>
                            </div>
                            <div class="view-details">
                                <a href="#"><span class="fa fa-angle-right"></span></a>
                            </div>
                            <a href="#">View more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="service-bg">
            <div class="container">
                <div class="service-hot">
                    <h3 class="div-title">
                        DỊCH VỤ TIÊU BIỂU</h3>
                    <p class="div-ex">
                        Lorem ipsum dolor sit amet consectetur adipiscing elit. Vestibulum vestibulum tellus
                        sit amet eros ultrices luctus, unc ultrices nunc ut
                    </p>
                    <div class="line-box">
                        <img src="assets/images/line-box.png" /></div>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-6 flip">
                            <div class="service-tb">
                                <a href="#">
                                    <div class="service-img">
                                        <img src="assets/images/img15.jpg" /></div>
                                </a>
                                <div class="service-name">
                                    <a href="#"><strong>TẠO HÌNH MẶT</strong>New Thermage 2016</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 flip">
                            <div class="service-tb">
                                <a href="#">
                                    <div class="service-img">
                                        <img src="assets/images/img5.jpg" /></div>
                                </a>
                                <div class="service-name">
                                    <a href="#"><strong>triệt lông vĩnh viễn</strong>diode laser m3</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 flip">
                            <div class="service-tb">
                                <a href="#">
                                    <div class="service-img">
                                        <img src="assets/images/img6.jpg" /></div>
                                </a>
                                <div class="service-name">
                                    <a href="#"><strong>xăm chân mày</strong>ultra collagen</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 flip">
                            <div class="service-tb">
                                <a href="#">
                                    <div class="service-img">
                                        <img src="assets/images/img7.jpg" /></div>
                                </a>
                                <div class="service-name">
                                    <a href="#"><strong>nâng ngực</strong>contri-lipo</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" runat="Server">
    <div class="aboutus-bg" data-img="assets/images/about-bg.jpg">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <div class="about-tb">
                    <h3 class="div-title">
                        VỀ CHÚNG TÔI</h3>
                    <p class="div-ex">
                        Tự hào là Thẩm mỹ viện đẳng cấp hàng đầu Việt Nam, Thẩm mỹ viện WHITE PALACE quy
                        tụ đội ngũ y bác sỹ đầu ngành trong và ngoài nước, được đào tạo bài bản, giàu kinh
                        nghiệm cùng hệ thống công nghệ và trang thiết bị hiện đại bậc nhất, WHITE PALACE
                        tự tin khẳng định là địa chỉ tin cậy cho tất cả khách hàng có nhu cầu làm đẹp</p>
                    <div class="row">
                        <div class="col-md-6 zoom">
                            <div class="about-box">
                                <div class="tb-img">
                                    <a href="#">
                                        <img src="assets/images/news3.jpg" alt="" /></a>
                                </div>
                                <div class="about-title">
                                    <a href="#">cơ sở vật chất hiện đại bậc nhất</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 zoom">
                            <div class="about-box">
                                <div class="tb-img">
                                    <a href="#">
                                        <img src="assets/images/news3.jpg" alt="" /></a>
                                </div>
                                <div class="about-title">
                                    <a href="#">đội ngũ bác sĩ uy tín, chuyên nghiệp</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 zoom">
                            <div class="about-box">
                                <div class="tb-img">
                                    <a href="#">
                                        <img src="assets/images/news3.jpg" alt="" /></a>
                                </div>
                                <div class="about-title">
                                    <a href="#">công nghệ thẩm mỹ tiên tiến hàng đầu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 zoom">
                            <div class="about-box">
                                <div class="tb-img">
                                    <a href="#">
                                        <img src="assets/images/news3.jpg" alt="" /></a>
                                </div>
                                <div class="about-title">
                                    <a href="#">quy trình thẫm mỹ chuyên nghiệp an toàn</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" runat="Server">
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
    <div id="overlay-scr">
        <p class="logo-wrap">
            <img class="thumnail" style="opacity: 0" src="assets/images/logo-ft.png" width="273" />
        </p>
    </div>
</asp:Content>
