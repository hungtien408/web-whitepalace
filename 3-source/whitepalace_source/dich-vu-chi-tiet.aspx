<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="dich-vu-chi-tiet.aspx.cs" Inherits="dich_vu_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphSite" runat="Server">
    <div id="site-details">
        <a id="A1" href="~/" runat="server">Trang chủ </a>/ <a href="phau-thuat-tham-my.aspx">
            Phẫu thuật thẩm mỹ</a>/ <span>
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
