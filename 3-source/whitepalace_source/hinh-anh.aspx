<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
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
                    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">ẢNH KHÁCH HÀNG</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
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
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstImageKH">
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
