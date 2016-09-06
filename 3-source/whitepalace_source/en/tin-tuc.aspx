<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<%@ Register Src="~/en/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<%@ Register TagPrefix="uc2" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
    <div class="main-in">
        <uc2:bannersub ID="bannersub1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="news-main">
        <div class="container">
            <h3 class="div-title">
                FEATURED NEWS</h3>
            <div class="line-box">
                <img src="../assets/images/line-box.png" /></div>
            <div class="slider-tree owl-carousel">
                <asp:ListView ID="lstNewHot" runat="server" DataSourceID="odsNewHot" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="news-pic">
                                <div class="news-img">
                                    <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news1.jpg" %>'
                                            runat="server" /></a>
                                </div>
                                <div class="news-name">
                                    <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                        <%# Eval("ProductNameEn") %></a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="news-colmain">
                <%--<div class="news-colleft desktop-992">
                    <ul class="list-nav">
                        <asp:ListView ID="lstPTHot" runat="server" DataSourceID="odsPTHot" EnableModelValidation="True">
                            <ItemTemplate>
                                <li>
                                    <div class="nav-box">
                                        <div class="hex-box">
                                            <div class="corner-1">
                                                <div class="corner-2">
                                                    <div class="corner-3">
                                                        <div class="nav-in">
                                                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                                <span class="box-frame"></span>
                                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/aside-img-1.png" %>'
                                                                    runat="server" />
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nav-content text-uppercase">
                                        <%# Eval("ProductNameEn") %>
                                    </div>
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsPTHot" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="14" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </ul>
                    <div class="aside-hotline">
                        <asp:ListView ID="lstHotline" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
                            <ItemTemplate>
                                <strong>
                                    <%# Eval("TagEn") %></strong>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsInfo" runat="server" SelectMethod="ArticleSelectAll"
                            TypeName="TLLib.Article">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ArticleTitle" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>--%>
                <div class="news-colright">
                    <div class="news-head">
                        <h4>
                            BÍ QUYẾT KHỎE VÀ ĐẸP</h4>
                        <div class="control-pager1">
                            <a href="#" class="slidePrevo1 fa fa-angle-left"></a><a href="#" class="slideNexto1 fa fa-angle-right">
                            </a>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="slider-tree1">
                        <asp:ListView ID="lstBQKD" runat="server" DataSourceID="odsBQKD" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="news-pic">
                                    <div class="news-img">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news1.jpg" %>'
                                                runat="server" /></a>
                                    </div>
                                    <div class="news-name">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductNameEn") %></a>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsBQKD" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="4" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="8" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <%--<div class="slide ">
                            <div class="news-pic">
                                <div class="news-img">
                                    <a href="#">
                                        <img src="assets/images/news1.jpg" /></a>
                                </div>
                                <div class="news-name">
                                    <a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a>
                                </div>
                            </div>
                            <div class="news-pic">
                                <div class="news-img">
                                    <a href="#">
                                        <img src="assets/images/news1.jpg" /></a>
                                </div>
                                <div class="news-name">
                                    <a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a>
                                </div>
                            </div>
                            <div class="news-pic">
                                <div class="news-img">
                                    <a href="#">
                                        <img src="assets/images/news1.jpg" /></a>
                                </div>
                                <div class="news-name">
                                    <a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a>
                                </div>
                            </div>
                            <div class="news-pic">
                                <div class="news-img">
                                    <a href="#">
                                        <img src="assets/images/news1.jpg" /></a>
                                </div>
                                <div class="news-name">
                                    <a href="#">trình khuyến mãi đặc biệt trong tháng 8 “Đẳng cấp như sao Việt”.</a>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
            <div class="clearfix">
            </div>
            <div class="tab-news">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">
                        BẢN TIN SAO</a></li>
                    <li role="presentation"><a href="#tab2" role="tab" data-toggle="tab">CHUYỆN THẬT KHÁCH
                        HÀNG</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <div class="list-tab">
                            <asp:ListView ID="lstBanTinSao" runat="server" DataSourceID="odsBanTinSao" EnableModelValidation="True">
                                <ItemTemplate>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news1.jpg" %>'
                                                    runat="server" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name">
                                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                    <%# Eval("ProductNameEn") %></a></div>
                                            <div class="description">
                                                <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 260) %></div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul>
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsBanTinSao" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter DefaultValue="9" Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                            <div class="pager">
                                <%--<a href="#" class="current">1</a> <a href="#">2</a> <a href="#">...</a> <a href="#"
                                    class="last fa fa-angle-right"></a>--%>
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstBanTinSao">
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
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <div class="list-tab">
                            <asp:ListView ID="lstChuyenThatKH" runat="server" DataSourceID="odsChuyenThatKH"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <li>
                                        <div class="tab-news-img">
                                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/news1.jpg" %>'
                                                    runat="server" /></a>
                                        </div>
                                        <div class="tab-news-text">
                                            <div class="tab-name">
                                                <a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                    <%# Eval("ProductNameEn") %></a></div>
                                            <div class="description">
                                                <%# TLLib.Common.SplitSummary(Eval("DescriptionEn").ToString(), 260) %></div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul>
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsChuyenThatKH" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter DefaultValue="10" Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                            <div class="pager">
                                <asp:DataPager ID="DataPager2" runat="server" PageSize="6" PagedControlID="lstChuyenThatKH">
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
