﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../assets/styles/slick.css" rel="stylesheet" type="text/css" />
    <script src="../assets/js/jquery.js" type="text/javascript"></script>
    <script src="../assets/js/slick.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.galleryLists .slider-for').slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: true,
                fade: false,
                asNavFor: '.galleryLists .slider-nav'
            });
            $('.galleryLists .slider-nav').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '.galleryLists .slider-for',
                dots: false,
                focusOnSelect: true
            });
            $('.galleryLists .slider-nav').on('afterChange', function (event, slick, currentSlide, nextSlide) {
                //remove all active class
                $('.galleryLists .slider-nav .slick-slide').removeClass('slick-current');
                //set active class for current slide
                $('.galleryLists .slider-nav .slick-slide:not(.slick-cloned)').eq(currentSlide).addClass('slick-current');
            });
            $('.galleryLists .slider-nav .slick-slide:not(.slick-cloned)').eq(0).addClass('slick-current');
        });
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="galleryLists gallery-slider">
        <div class="slider-for">
            <asp:ListView ID="lstPhotoBig" runat="server" DataSourceID="odsPhoto" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/photoalbum/" + Eval("ImageName") : "~/assets/images/gallery-big-1.jpg" %>'
                                    runat="server" /></div>
                            <div class="gallery-text">
                                <div class="text-in">
                                    <%# Eval("TitleEn") %></div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
        </div>
        <div class="gallery-smalls">
            <div class="slider-nav">
                <asp:ListView ID="lstPhotoSmall" runat="server" DataSourceID="odsPhoto" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/photoalbum/" + Eval("ImageName") : "~/assets/images/gallery-big-1.jpg" %>'
                                        runat="server" /></div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsPhoto" runat="server" SelectMethod="PhotoAlbumSelectAll"
                    TypeName="TLLib.PhotoAlbum">
                    <SelectParameters>
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Descripttion" Type="String" />
                        <asp:QueryStringParameter QueryStringField="gl" Name="PhotoAlbumCategoryID" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
