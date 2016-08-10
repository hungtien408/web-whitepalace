<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<%@ Register Src="~/en/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-in">
        <div class="about-main">
            <div class="container">
                <div class="about-left">
                    <asp:ListView ID="lstBannerAbout" runat="server" DataSourceID="odsBannerAbout" EnableModelValidation="True">
                        <ItemTemplate>
                            <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/about1.jpg" %>'
                                runat="server" />
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsBannerAbout" runat="server" SelectMethod="AdsBannerSelectAll"
                        TypeName="TLLib.AdsBanner">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter DefaultValue="7" Name="AdsCategoryID" Type="String" />
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="Website" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="about-right">
                    <asp:ListView ID="lstAboutDetails" runat="server" DataSourceID="odsAboutDetails"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <h3 class="div-title">
                                <%# Eval("ProductNameEn") %></h3>
                            <div class="line-box">
                                <img src="../assets/images/line-box.png" /></div>
                            <div class="about-bg">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsAboutDetails" runat="server" SelectMethod="ProductSelectOne"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="ProductID" QueryStringField="gt"
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <div class="hotline-main">
                        <div class="hotline-box">
                            <p>
                                Hotline(24/7)</p>
                            <p>
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
                            </p>
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
