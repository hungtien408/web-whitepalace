<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="dich-vu-chi-tiet.aspx.cs" Inherits="dich_vu_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphSite" runat="Server">
    <div id="site-details">
        <%--<a id="A1" href="~/" runat="server">Trang chủ </a>/ <a href="phau-thuat-tham-my.aspx">
            Phẫu thuật thẩm mỹ</a>/<a href="dich-vu.aspx">
            Mắt</a>/ <span>
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>--%>
                <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum" EnableModelValidation="True">
                <ItemTemplate>
                    <%# "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a>/ "%>
                </ItemTemplate>
                <LayoutTemplate>
                    <a id="A1" href="~/" runat="server">Trang chủ</a>/ <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ProductCategoryHierarchyToTopSelectAll"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci"
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphColAside" runat="Server">
    <h2 class="title-news text-uppercase">
        <span>Ảnh khách hàng</span></h2>
    <div class="list-cus">
        <asp:ListView ID="lstImageKH" runat="server" DataSourceID="odsImageKH" EnableModelValidation="True">
            <ItemTemplate>
                <div class="box-cus">
                    <div class="boxa">
                        <a href="javascript:void(0);" class="bnew-img">
                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/img-kh-1.jpg" %>'
                                runat="server" />
                        </a>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsImageKH" runat="server" SelectMethod="ProductImageSelectAll"
            TypeName="TLLib.ProductImage">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphColMain" runat="Server">
        <div class="quick">
        <div class="quick-wrapper">
            <div class="quick_list">
                <ul>
                    <li class="q-list q-list-1"><a href="javascript:void(0);">
                        <img src="assets/images/uudiem.png" alt="" />ưu điểm</a></li>
                    <li class="q-list q-list-2"><a href="javascript:void(0);">
                        <img src="assets/images/quytrinh.png" alt="" />quy trình</a></li>
                    <li class="q-list-3"><a href="hinh-anh.aspx">
                        <img src="assets/images/hinhanh.png" alt="" />hình ảnh</a></li>
                    <li class="q-list-4"><a href="video.aspx">
                        <img src="assets/images/ico-video.png" alt="" />video</a></li>
                    <li class="q-list q-list-5"><a href="javascript:void(0);"><img src="assets/images/healthy.png" alt="" />CS sau khi điều trị</a></li>
                    <li class="q-list q-list-6"><a href="javascript:void(0);">
                        <img src="assets/images/chi-phi.png" alt="" />giá</a></li>
                    <li class="q-list q-list-7"><a href="tel:0933866661">Hotline
                        <p>0933 866 661</p></a></li>
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
                                    <%# Eval("ProductCategoryName") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblAdvantage" runat="server" Text='<%# Eval("Advantage") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-2">
                            <div class="q-box">
                                <h2>
                                    QUY TRÌNH</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryName") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblProcess" runat="server" Text='<%# Eval("Process") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-5">
                            <div class="q-box">
                                <h2>
                                    CS SAU ĐIỀU TRỊ</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryName") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblCSDieuTri" runat="server" Text='<%# Eval("CSDieuTri") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="q-con q-con-6">
                            <div class="q-box">
                                <h2>
                                    CHI PHÍ</h2>
                                <div class="q-title">
                                    <%# Eval("ProductCategoryName") %></div>
                                <div class="q-content">
                                    <asp:Label ID="lblContentPrice" runat="server" Text='<%# Eval("ContentPrice") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <a href="javascript:void(0);" class="close_q">
                            <img src="assets/images/btn_q_close.gif" alt="QUICK"></a>
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

    <asp:ListView ID="lstServiceDetails" runat="server" DataSourceID="odsServiceDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <h4 class="title-details text-uppercase">
                <%# Eval("ProductName") %></h4>
            <div class="wrapper-text">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsServiceDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
