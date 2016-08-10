<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="phau-thuat-tham-my.aspx.cs" Inherits="phau_thuat_tham_my" %>

<%@ Register TagPrefix="uc1" TagName="formcontact" Src="~/uc/form-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-in">
        <asp:ListView ID="lstPT" runat="server" DataSourceID="odsPT" EnableModelValidation="True">
            <ItemTemplate>
                <div class="slide-box">
                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/banner-pttm-1.png" %>'
                        runat="server" />
                    <div class="slide-content">
                        <h4 class="text-uppercase">
                            <%# Eval("ProductCategoryName") %></h4>
                        <div class="description">
                            <%# Eval("Description")%>
                        </div>
                        <div class="more-details">
                            <a class="text-center" href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                Xem thêm</a></div>
                    </div>
                    <asp:HiddenField ID="hdnPT" runat="server" Value='<%# Eval("ProductCategoryID") %>' />
                    <div class="slide-cicle">
                        <asp:ListView ID="lstHinhPT" runat="server" DataSourceID="odsHinhPT" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="cicle">
                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/album/" + Eval("ImageName") : "~/assets/images/pt-img-1.png" %>'
                                        runat="server" />
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsHinhPT" runat="server" SelectMethod="ProductImageCategorySelectAll"
                            TypeName="TLLib.ProductImageCategory">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnPT" Name="ProductCategoryID" PropertyName="Value" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsPT" runat="server" SelectMethod="ProductCategorySelectAll"
            TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter DefaultValue="True" Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" runat="Server">
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" runat="Server">
</asp:Content>
