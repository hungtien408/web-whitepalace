<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="hinh-anh.aspx.cs" Inherits="hinh_anh" %>

<%@ Register Src="~/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<%@ Register TagPrefix="uc2" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" Runat="Server">
    <div class="main-in">
      <div id="banner">
        <uc2:bannersub ID="bannersub1" runat="server"/>
      </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="picture-bg">
        <div class="container">
            <div class="tab-picture">
                 <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">DỊCH VỤ & CƠ SỞ VẬT CHẤT</a></li>
                    <li role="presentation"><a href="#tab2"role="tab" data-toggle="tab">ẢNH KHÁCH HÀNG</a></li>
                    <li role="presentation"><a href="#tab3"role="tab" data-toggle="tab">VIDEO</a></li>
                  </ul>
                   <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <div class="tab-picbox row">
                           <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                          <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                            <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                            <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                            <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                            <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                        </div>
                        <div class="pager">
                            <a href="#" class="current">1</a>
                            <a href="#">2</a>
                            <a href="#">...</a>
                             <a href="#"class="last fa fa-angle-right"></a>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <div class="tab-box">
                            <div class="tab-picbox row">
                               <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                                <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                                <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                                <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                                <div class="col-md-4 element-item">
                               <div class="tab-pic">
                                   <div class="pic-img">
                                       <a class="fancybox fancybox.iframe" href="gallery.aspx"><img src="assets/images/pic1.jpg" /></a>
                                   </div>
                                   <div class="pic-name">Cơ sở vật chất White Palace chi nhánh TP.HCM</div>
                               </div>
                           </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <div class="tab-box">
                             <div class="tab-picbox row">
                                <div class="col-md-4 element-item">
                                    <div class="tab-pic">
                                        <div class="pic-img">
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
                                <div class="col-md-4 element-item">
                                    <div class="tab-pic">
                                        <div class="pic-img">
                                             <div id="jwplayer2">
                                            </div>
                                              <script type="text/javascript">
                                                  $(document).ready(function () {
                                                      jwplayer('jwplayer2').setup({
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
                                <div class="col-md-4 element-item">
                                    <div class="tab-pic">
                                        <div class="pic-img">
                                             <div id="jwplayer3">
                                            </div>
                                              <script type="text/javascript">
                                                  $(document).ready(function () {
                                                      jwplayer('jwplayer3').setup({
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
                                <div class="col-md-4 element-item">
                                <div class="tab-pic">
                                    <div class="pic-img">
                                         <div id="jwplayer4">
                                        </div>
                                          <script type="text/javascript">
                                              $(document).ready(function () {
                                                  jwplayer('jwplayer4').setup({
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
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>

