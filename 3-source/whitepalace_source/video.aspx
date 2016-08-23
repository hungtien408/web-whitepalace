<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="video" %>

<%@ Register Src="~/uc/banner-sub.ascx" TagPrefix="uc1" TagName="bannersub" %>
<%@ Register Src="~/uc/form-contact.ascx" TagPrefix="uc1" TagName="formcontact" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerdefault" Runat="Server">
    <div class="main-in">
        <div id="banner">
            <uc1:bannersub runat="server" ID="bannersub" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="picture-bg">
        <div class="container">
            <div class="tab-picture">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">VIDEO</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
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
                                                                image: '<%# string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "" : "res/video/thumbs/" + Eval("ImagePath") %>',
                                                                file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                                                flashplayer: "assets/js/jwplayer.flash.swf",
                                                                width: '100%',
                                                                aspectratio: '16:9',
                                                                screencolor: 'FFFFFF',
                                                                backcolor: 'transparent',
                                                                wmode: 'transparent'
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
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstVideo">
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
<asp:Content ID="Content4" ContentPlaceHolderID="imgbg" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contactmain" Runat="Server">
    <uc1:formcontact runat="server" ID="formcontact" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphOverplay" Runat="Server">
</asp:Content>

