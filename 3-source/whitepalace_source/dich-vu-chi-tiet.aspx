<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="dich-vu-chi-tiet.aspx.cs" Inherits="dich_vu_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphSite" runat="Server">
    <div id="site-details">
        <a id="A1" href="~/" runat="server">Trang chủ </a>/ <a href="phau-thuat-tham-my.aspx">
            Phẫu thuật thẩm mỹ</a>/<a href="dich-vu.aspx">
            Mắt</a>/ <span>
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
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
                    <li class="q-list q-list-1"><a href="#">
                        <img src="assets/images/uudiem.png" alt="" />ưu điểm</a></li>
                    <li class="q-list q-list-2"><a href="#">
                        <img src="assets/images/quytrinh.png" alt="" />quy trình</a></li>
                    <li class="q-list-3"><a href="hinh-anh.aspx">
                        <img src="assets/images/hinhanh.png" alt="" />hình ảnh</a></li>
                    <li class="q-list-4"><a href="video.aspx">
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
                    1
                </div>
                <div class="q-con q-con-2">
                    2
                </div>
                <%--<div class="q-con q-con-3">
                    3
                </div>
                <div class="q-con q-con-4">
                    4
                </div>--%>
                <div class="q-con q-con-5">
                    5
                </div>
                <div class="q-con q-con-6">
                    6
                </div>
                <%--<div class="q-con q-con-7">
                    7
                </div>--%>
                <a href="#" class="close_q"><img src="assets/images/btn_q_close.gif" alt="QUICK"></a>
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
