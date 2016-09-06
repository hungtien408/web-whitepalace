<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="dich-vu.aspx.cs" Inherits="dich_vu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSite" runat="Server">
    <%--<div id="site-details">
        <a id="A1" href="~/" runat="server">Trang chủ </a>/ <a href="phau-thuat-tham-my.aspx">
            Phẫu thuật thẩm mỹ</a>/ <span>Mắt</span>
            </div>--%>
    <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum" EnableModelValidation="True">
        <ItemTemplate>
            <%# Container.DataItemIndex == ((System.Data.DataView)odsBreadcrum.Select()).Count - 1 ? "<span>" + Eval("ProductCategoryName") + "</span>" : "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a>/ "%>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="site-details">
                <a id="A1" href="~/" runat="server">Trang chủ</a>/ <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ProductCategoryHierarchyToTopSelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci"
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphColAside1" runat="Server">
    <ul class="list-nav">
        <asp:ListView ID="lstServiceCategory" runat="server" DataSourceID="odsServiceCategory"
            EnableModelValidation="True">
            <ItemTemplate>
                <li>
                    <div class="nav-box">
                        <div class="hex-box">
                            <div class="corner-1">
                                <div class="corner-2">
                                    <div class="corner-3">
                                        <div class="nav-in">
                                            <a href='<%# progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ParentID") + "-pri-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                                <span class="box-frame"></span>
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/aside-img-1.png" %>'
                                                    runat="server" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="nav-content text-uppercase">
                        <%# Eval("ProductCategoryNameEn") %>
                    </div>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsServiceCategory" runat="server" SelectMethod="ProductCategorySelectAll"
            TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="pci" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </ul>
    <div class="aside-hotline">
        <asp:ListView ID="lstHotline" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
            <ItemTemplate>
                <strong>
                    <%# Eval("Tag") %></strong>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphColAside2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphColMain" runat="Server">
    <div class="quick">
        <div class="quick-wrapper">
            <div class="quick_list">
                <ul>
                    <li class="q-list q-list-1"><a href="javascript:void(0);">
                        <img src="../assets/images/uudiem.png" alt="" />ưu điểm</a></li>
                    <li class="q-list q-list-2"><a href="javascript:void(0);">
                        <img src="../assets/images/quytrinh.png" alt="" />quy trình</a></li>
                    <li class="q-list-3"><a href="hinh-anh.aspx">
                        <img src="../assets/images/hinhanh.png" alt="" />hình ảnh</a></li>
                    <li class="q-list-4"><a href="video.aspx">
                        <img src="../assets/images/ico-video.png" alt="" />video</a></li>
                    <li class="q-list q-list-5"><a href="javascript:void(0);">
                        <img src="../assets/images/healthy.png" alt="" />CS sau khi điều trị</a></li>
                    <li class="q-list q-list-6"><a href="javascript:void(0);">
                        <img src="../assets/images/chi-phi.png" alt="" />giá</a></li>
                    <li class="q-list q-list-7"><a href="tel:0933866661">Hotline
                        <p>
                            0933 866 661</p>
                    </a></li>
                </ul>
            </div>
            <div class="quick_content">
                <asp:ListView ID="lstQuickContent" runat="server" DataSourceID="odsQuickContent"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="q-con q-con-1">
                            <div class="q-box">
                                <h2>
                                    ƯU ĐIỂM</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryNameEn") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblAdvantage" runat="server" Text='<%# Eval("AdvantageEn") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-2">
                            <div class="q-box">
                                <h2>
                                    QUY TRÌNH</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryNameEn") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblProcess" runat="server" Text='<%# Eval("ProcessEn") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-5">
                            <div class="q-box">
                                <h2>
                                    CS SAU ĐIỀU TRỊ</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryNameEn") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblCSDieuTri" runat="server" Text='<%# Eval("CSDieuTriEn") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-6">
                            <div class="q-box">
                                <h2>
                                    CHI PHÍ</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryNameEn") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblContentPrice" runat="server" Text='<%# Eval("ContentPriceEn") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <a href="javascript:void(0);" class="close_q">
                            <img src="../assets/images/btn_q_close.gif" alt="QUICK"></a>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsQuickContent" runat="server" SelectMethod="ProductCategorySelectOne"
                    TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductCategoryID" QueryStringField="pci" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    <div class="servicer-main list-tab">
        <asp:ListView ID="lstService" runat="server" DataSourceID="odsService" EnableModelValidation="True">
            <ItemTemplate>
                <li>
                    <div class="tab-news-img">
                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/ser-img-1.jpg" %>'
                                runat="server" /></a>
                    </div>
                    <div class="tab-news-text">
                        <div class="tab-name">
                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <%# Eval("ProductNameEn") %></a></div>
                        <div class="description">
                            <%# Eval("DescriptionEn") %></div>
                        <div class="view-detail">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <span class="fa fa-angle-double-right"></span>see more</a></div>
                    </div>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul>
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsService" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:QueryStringParameter QueryStringField="pci" Name="CategoryID" Type="String" />
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
            <asp:DataPager ID="DataPager1" runat="server" PageSize="8" PagedControlID="lstService">
                <Fields>
                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-angle-right"
                        ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                        LastPageText="" />
                </Fields>
            </asp:DataPager>
        </div>
    </div>
</asp:Content>
