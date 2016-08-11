﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="hinh-anh.aspx.cs" Inherits="hinh_anh" %>

<%@ Register Src="~/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<%@ Register TagPrefix="uc2" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
    <div class="main-in">
        <div id="banner">
            <uc2:bannersub ID="bannersub1" runat="server" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="picture-bg">
        <div class="container">
            <div class="tab-picture">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">
                        DỊCH VỤ & CƠ SỞ VẬT CHẤT</a></li>
                    <li role="presentation"><a href="#tab2" role="tab" data-toggle="tab">ẢNH KHÁCH HÀNG</a></li>
                    <li role="presentation"><a href="#tab3" role="tab" data-toggle="tab">VIDEO</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <div class="tab-picbox row">
                            <asp:ListView ID="lstImageCSVC" runat="server" DataSourceID="odsImageCSVC" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-md-4 element-item">
                                        <div class="tab-pic">
                                            <div class="pic-img">
                                                <a class="fancybox fancybox.iframe" href='<%# progressTitle(Eval("PhotoAlbumCategoryName")) + "-gl-" + Eval("PhotoAlbumCategoryID") + ".aspx" %>'>
                                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/photoalbumcategory/" + Eval("ImageName") : "~/assets/images/pic1.jpg" %>'
                                                        runat="server" /></a>
                                            </div>
                                            <div class="pic-name">
                                                <%# Eval("PhotoAlbumCategoryName")%></div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsImageCSVC" runat="server" SelectMethod="PhotoAlbumCategorySelectAll"
                                TypeName="TLLib.PhotoAlbumCategory">
                                <SelectParameters>
                                    <asp:Parameter Name="PhotoAlbumCategoryName" Type="String" />
                                    <asp:Parameter DefaultValue="1" Name="AlbumCategoryID" Type="String" />
                                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="pager">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstImageCSVC">
                                <Fields>
                                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-angle-right"
                                        ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                        LastPageText="" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <div class="tab-box">
                            <div class="tab-picbox row">
                                <asp:ListView ID="lstImageKH" runat="server" DataSourceID="odsImageKH" EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="col-md-4 element-item">
                                            <div class="tab-pic">
                                                <div class="pic-img">
                                                    <a class="fancybox fancybox.iframe" href='<%# progressTitle(Eval("PhotoAlbumCategoryName")) + "-gl-" + Eval("PhotoAlbumCategoryID") + ".aspx" %>'>
                                                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/photoalbumcategory/" + Eval("ImageName") : "~/assets/images/pic1.jpg" %>'
                                                            runat="server" /></a>
                                                </div>
                                                <div class="pic-name">
                                                    <%# Eval("PhotoAlbumCategoryName")%></div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsImageKH" runat="server" SelectMethod="PhotoAlbumCategorySelectAll"
                                    TypeName="TLLib.PhotoAlbumCategory">
                                    <SelectParameters>
                                        <asp:Parameter Name="PhotoAlbumCategoryName" Type="String" />
                                        <asp:Parameter DefaultValue="2" Name="AlbumCategoryID" Type="String" />
                                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                            <div class="pager">
                                <asp:DataPager ID="DataPager2" runat="server" PageSize="6" PagedControlID="lstImageKH">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-angle-right"
                                            ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                            LastPageText="" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <div class="tab-box">
                            <div class="tab-picbox row">
                                <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo" EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="col-md-4 element-item">
                                            <div class="tab-pic">
                                                <div class="pic-img">
                                                    <div id='<%# "jwplayer" + Eval("VideoID") %>'>
                                                    </div>
                                                    <script type="text/javascript">
                                                        $(document).ready(function () {
                                                            jwplayer('<%# "jwplayer" + Eval("VideoID") %>').setup({
                                                                "image": "",
                                                                file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
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
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll"
                                    TypeName="TLLib.Video">
                                    <SelectParameters>
                                        <asp:Parameter Name="Title" Type="String" />
                                        <asp:Parameter Name="Description" Type="String" />
                                        <asp:Parameter Name="VideoCategoryID" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                            <div class="pager">
                            <asp:DataPager ID="DataPager3" runat="server" PageSize="6" PagedControlID="lstVideo">
                                <Fields>
                                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-angle-right"
                                        ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                        LastPageText="" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                        </div>
                    </div>
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