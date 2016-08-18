using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using TLLib;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;


public partial class ad_single_productcategory : System.Web.UI.Page
{
    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }

    void DeleteImage(string strImageName)
    {
        if (!string.IsNullOrEmpty(strImageName))
        {
            string strOldImagePath = Server.MapPath("~/res/productcategory/" + strImageName);
            if (File.Exists(strOldImagePath))
                File.Delete(strOldImagePath);
        }
    }

    void DeleteImageMenu(string strImageNameMenu)
    {
        if (!string.IsNullOrEmpty(strImageNameMenu))
        {
            string strOldImageMenuPath = Server.MapPath("~/res/productcategory/menu/" + strImageNameMenu);
            if (File.Exists(strOldImageMenuPath))
                File.Delete(strOldImageMenuPath);
        }
    }

    void DeletePhotoAlbum(string strImageName)
    {
        if (!string.IsNullOrEmpty(strImageName))
        {
            var strImagePath = Server.MapPath("~/res/productcategory/album/" + strImageName);
            var strThumbImagePath = Server.MapPath("~/res/productcategory/album/thumbs/" + strImageName);

            if (File.Exists(strImagePath))
                File.Delete(strImagePath);
            if (File.Exists(strThumbImagePath))
                File.Delete(strThumbImagePath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TempImage = new DataTable();
            TempImage.Columns.Add("ImageName");
        }
    }

    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "QuickUpdate")
        {
            string ProductCategoryID, IsShowOnMenu, IsShowOnHomePage, IsAvailable;
            var oProductCategory = new ProductCategory();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                ProductCategoryID = item.GetDataKeyValue("ProductCategoryID").ToString();
                IsShowOnMenu = ((CheckBox)item.FindControl("chkIsShowOnMenu")).Checked.ToString();
                IsShowOnHomePage = ((CheckBox)item.FindControl("chkIsShowOnHomePage")).Checked.ToString();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oProductCategory.ProductCategoryQuickUpdate(
                    ProductCategoryID,
                    IsShowOnMenu,
                    IsShowOnHomePage,
                    IsAvailable
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            var oProductCategory = new ProductCategory();
            var errorList = "";

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                var isChildCategoryExist = oProductCategory.ProductCategoryIsChildrenExist(item.GetDataKeyValue("ProductCategoryID").ToString());
                var ProductCategoryName = ((Label)item.FindControl("lblProductCategoryName")).Text;
                var ProductCategoryNameEn = ((Label)item.FindControl("lblProductCategoryNameEn")).Text;
                if (isChildCategoryExist)
                {
                    errorList += ", " + ProductCategoryName;
                }
                else
                {
                    string strImageName = ((HiddenField)item.FindControl("hdnImageName")).Value;

                    if (!string.IsNullOrEmpty(strImageName))
                    {
                        string strSavePath = Server.MapPath("~/res/productcategory/" + strImageName);
                        if (File.Exists(strSavePath))
                            File.Delete(strSavePath);
                    }

                    string strImageNameMenu = ((HiddenField)item.FindControl("hdnImageNameMenu")).Value;

                    if (!string.IsNullOrEmpty(strImageNameMenu))
                    {
                        string strSavePathMenu = Server.MapPath("~/res/productcategory/menu/" + strImageNameMenu);
                        if (File.Exists(strSavePathMenu))
                            File.Delete(strSavePathMenu);
                    }
                }
            }
            if (!string.IsNullOrEmpty(errorList))
            {
                e.Canceled = true;
                string strAlertMessage = "Danh mục <b>\"" + errorList.Remove(0, 1).Trim() + "\"</b> đang có danh mục con hoặc sản phẩm.<br /> Xin xóa danh mục con hoặc sản phẩm trong danh mục này hoặc thiết lập hiển thị = \"không\".";
                lblError.Text = strAlertMessage;
            }
        }
        else if (e.CommandName == "InitInsert" || e.CommandName == "EditSelected" || e.CommandName == "Edit")
        {
            TempImage.Rows.Clear();
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileImageNameMenu = (RadUpload)row.FindControl("FileImageNameMenu");

            string strProductCategoryName = ((RadTextBox)row.FindControl("txtProductCategoryName")).Text.Trim();
            string strProductCategoryNameEn = ((RadTextBox)row.FindControl("txtProductCategoryNameEn")).Text.Trim();
            string strConvertedProductCategoryName = Common.ConvertTitle(strProductCategoryName);
            string strDescription = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtDescription")).Content.Trim()));
            string strDescriptionEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtDescriptionEn")).Content.Trim()));
            string strContent = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContent")).Content.Trim()));
            string strContentEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentEn")).Content.Trim()));
            string strMetaTitle = ((RadTextBox)row.FindControl("txtMetaTitle")).Text.Trim();
            string strMetaTitleEn = ((RadTextBox)row.FindControl("txtMetaTitleEn")).Text.Trim();
            string strMetaDescription = ((RadTextBox)row.FindControl("txtMetaDescription")).Text.Trim();
            string strMetaDescriptionEn = ((RadTextBox)row.FindControl("txtMetaDescriptionEn")).Text.Trim();
            string strImageName = FileImageName.UploadedFiles.Count > 0 ? FileImageName.UploadedFiles[0].GetName() : "";
            string strImageNameMenu = FileImageNameMenu.UploadedFiles.Count > 0 ? FileImageNameMenu.UploadedFiles[0].GetName() : "";
            string strParentID = ((RadComboBox)row.FindControl("ddlParent")).SelectedValue;
            if ("".Equals(strParentID))
                strParentID = "4";
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();
            string strIsShowOnMenu = ((CheckBox)row.FindControl("chkIsShowOnMenu")).Checked.ToString();
            string strIsShowOnHomePage = ((CheckBox)row.FindControl("chkIsShowOnHomePage")).Checked.ToString();
            string strAdvantage = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtAdvantage")).Content.Trim()));
            string strAdvantageEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtAdvantageEn")).Content.Trim()));
            string strProcess = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtProcess")).Content.Trim()));
            string strProcessEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtProcessEn")).Content.Trim()));
            string strCSDieuTri = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtCSDieuTri")).Content.Trim()));
            string strCSDieuTriEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtCSDieuTriEn")).Content.Trim()));
            string strContentPrice = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentPrice")).Content.Trim()));
            string strContentPriceEn = HttpUtility.HtmlDecode(FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentPriceEn")).Content.Trim()));

            var oProductCategory = new ProductCategory();

            if (e.CommandName == "PerformInsert")
            {
                strImageName = oProductCategory.ProductCategoryInsert2(
                    strProductCategoryName,
                    strProductCategoryNameEn,
                    strConvertedProductCategoryName,
                    strDescription,
                    strDescriptionEn,
                    strContent,
                    strContentEn,
                    strMetaTitle,
                    strMetaTitleEn,
                    strMetaDescription,
                    strMetaDescriptionEn,
                    strImageName,
                    strImageNameMenu,
                    strParentID,
                    strIsShowOnMenu,
                    strIsShowOnHomePage,
                    strIsAvailable,
                    strAdvantage,
                    strAdvantageEn,
                    strProcess,
                    strProcessEn,
                    strCSDieuTri,
                    strCSDieuTriEn,
                    strContentPrice,
                    strContentPriceEn
                );

                string ProductCategoryID = oProductCategory.ProductCategoryID;

                string strFullPath = "~/res/productcategory/" + strImageName;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 1366, 500);
                }

                if (!string.IsNullOrEmpty(strImageNameMenu))
                {
                    var strFullPathMenu = "~/res/productcategory/menu/" + strConvertedProductCategoryName + "-" + ProductCategoryID + strImageNameMenu.Substring(strImageNameMenu.LastIndexOf('.'));

                    FileImageNameMenu.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathMenu));
                    ResizeCropImage.ResizeByCondition(strFullPathMenu, 145, 141);
                }

                if (TempImage.Rows.Count > 0)
                {
                    var oProductImageCategory = new ProductImageCategory();

                    foreach (DataRow dr in TempImage.Rows)
                    {
                        oProductImageCategory.ProductImageCategoryInsert(dr["ImageName"].ToString(), "", "", "", "", "", ProductCategoryID, "True", "");
                    }
                }
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strProductCategoryID = row.GetDataKeyValue("ProductCategoryID").ToString();
                var strOldImageName = ((HiddenField)row.FindControl("hdnImageName")).Value;
                var strOldImagePath = Server.MapPath("~/res/productcategory/" + strOldImageName);
                var strOldImageNameMenu = ((HiddenField)row.FindControl("hdnImageNameMenu")).Value;
                var strOldImagePathMenu = Server.MapPath("~/res/productcategory/menu/" + strOldImageNameMenu);

                dsUpdateParam["ProductCategoryName"].DefaultValue = strProductCategoryName;
                dsUpdateParam["ProductCategoryNameEn"].DefaultValue = strProductCategoryNameEn;
                dsUpdateParam["ConvertedProductCategoryName"].DefaultValue = strConvertedProductCategoryName;
                dsUpdateParam["Description"].DefaultValue = strDescription;
                dsUpdateParam["DescriptionEn"].DefaultValue = strDescriptionEn;
                dsUpdateParam["Content"].DefaultValue = strContent;
                dsUpdateParam["ContentEn"].DefaultValue = strContentEn;
                dsUpdateParam["ImageName"].DefaultValue = strImageName;
                dsUpdateParam["ImageNameMenu"].DefaultValue = strImageNameMenu;
                dsUpdateParam["ParentID"].DefaultValue = strParentID;
                dsUpdateParam["IsShowOnMenu"].DefaultValue = strIsShowOnMenu;
                dsUpdateParam["IsShowOnHomePage"].DefaultValue = strIsShowOnHomePage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;
                dsUpdateParam["Advantage"].DefaultValue = strAdvantage;
                dsUpdateParam["AdvantageEn"].DefaultValue = strAdvantageEn;
                dsUpdateParam["Process"].DefaultValue = strProcess;
                dsUpdateParam["ProcessEn"].DefaultValue = strProcessEn;
                dsUpdateParam["CSDieuTri"].DefaultValue = strCSDieuTri;
                dsUpdateParam["CSDieuTriEn"].DefaultValue = strCSDieuTriEn;
                dsUpdateParam["ContentPrice"].DefaultValue = strContentPrice;
                dsUpdateParam["ContentPriceEn"].DefaultValue = strContentPriceEn;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    var strFullPath = "~/res/productcategory/" + strConvertedProductCategoryName + "-" + strProductCategoryID + strImageName.Substring(strImageName.LastIndexOf('.'));

                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 1366, 500);
                }

                if (!string.IsNullOrEmpty(strImageNameMenu))
                {
                    var strFullPathMenu = "~/res/productcategory/menu/" + strConvertedProductCategoryName + "-" + strProductCategoryID + strImageNameMenu.Substring(strImageNameMenu.LastIndexOf('.'));

                    if (File.Exists(strOldImagePathMenu))
                        File.Delete(strOldImagePathMenu);

                    FileImageNameMenu.UploadedFiles[0].SaveAs(Server.MapPath(strFullPathMenu));
                    ResizeCropImage.ResizeByCondition(strFullPathMenu, 145, 141);
                }
            }
        }
        else if (e.CommandName == "Cancel")
        {
            if (TempImage.Rows.Count > 0)
            {
                foreach (DataRow row in TempImage.Rows)
                {
                    DeletePhotoAlbum(row["ImageName"].ToString());
                }
                TempImage.Rows.Clear();
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oProductCategory = new ProductCategory();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strProductCategoryID = s[0];
            var strImageName = s[1];

            oProductCategory.ProductCategoryImageDelete(strProductCategoryID);
            DeleteImage(strImageName);
            RadGrid1.Rebind();
        }
        if (e.CommandName == "DeleteImageMenu")
        {
            var oProductCategory = new ProductCategory();
            var lnkDeleteImageMenu = (LinkButton)e.CommandSource;
            var s = lnkDeleteImageMenu.Attributes["rel"].ToString().Split('#');
            var strProductCategoryID = s[0];
            var strImageNameMenu = s[1];

            oProductCategory.ProductCategoryImageMenuDelete(strProductCategoryID);
            DeleteImageMenu(strImageNameMenu);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if (e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var FileImageNameMenu = (RadUpload)row.FindControl("FileImageNameMenu");
            var ProductCategoryID = ((HiddenField)row.FindControl("hdnProductCategoryID")).Value;
            var dv = (DataView)ObjectDataSource1.Select();
            var ddlParent = (RadComboBox)row.FindControl("ddlParent");

            if (!string.IsNullOrEmpty(ProductCategoryID))
            {
                dv.RowFilter = "ProductCategoryID = " + ProductCategoryID;

                if (!string.IsNullOrEmpty(dv[0]["ParentID"].ToString()))
                    ddlParent.SelectedValue = dv[0]["ParentID"].ToString();
            }

            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileImageName.ClientID));
            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId2'] = '{0}';", FileImageNameMenu.ClientID));
        }
    }

    protected void RadListView1_ItemCommand(object sender, RadListViewCommandEventArgs e)
    {
        try
        {
            var RadListView1 = (RadListView)sender;
            var Parent = RadListView1.NamingContainer;
            var OdsProductCategoryPhotoAlbum = (ObjectDataSource)Parent.FindControl("OdsProductCategoryPhotoAlbum");

            if (e.CommandName == "Update")
            {
                var item = e.ListViewItem;
                var dsUpdateParam = OdsProductCategoryPhotoAlbum.UpdateParameters;

                var strOldImageName = ((HiddenField)e.ListViewItem.FindControl("hdnImageName")).Value;
                var strIsAvailable = ((CheckBox)item.FindControl("chkAddIsAvailable")).Checked.ToString();

                dsUpdateParam["ImageName"].DefaultValue = strOldImageName;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;
            }
            else if (e.CommandName == "Delete")
            {
                var strOldImageName = ((HiddenField)e.ListViewItem.FindControl("hdnImageName")).Value;
                DeletePhotoAlbum(strOldImageName);
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void RadListView2_ItemCommand(object sender, RadListViewCommandEventArgs e)
    {
        try
        {
            var RadListView2 = (RadListView)sender;
            if (e.CommandName == "Delete")
            {
                var Parent = RadListView2.NamingContainer;
                var strOldImageName = ((HiddenField)e.ListViewItem.FindControl("hdnImageName")).Value;
                DeletePhotoAlbum(strOldImageName);

                TempImage.Rows.Cast<DataRow>().Where(c => c["ImageName"].ToString() == strOldImageName).Single().Delete();
                RadListView2.DataSource = TempImage;
                RadListView2.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void FileImageAlbum_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        var FileImageAlbum = (RadAsyncUpload)sender;
        var Parent = FileImageAlbum.NamingContainer;
        var ProductCategoryID = ((HiddenField)Parent.FindControl("hdnProductCategoryID")).Value;
        var RadListView1 = (RadListView)Parent.FindControl("RadListView1");
        var RadListView2 = (RadListView)Parent.FindControl("RadListView2");

        string targetFolder = "~/res/productcategory/album/";
        string newName = Guid.NewGuid().GetHashCode().ToString("X") + e.File.GetExtension();
        e.File.SaveAs(Server.MapPath(targetFolder + newName));

        ResizeCropImage.ResizeByCondition(targetFolder + newName, 215, 215);
        ResizeCropImage.CreateThumbNailByCondition("~/res/productcategory/album/", "~/res/productcategory/album/thumbs/", newName, 120, 120);

        if (string.IsNullOrEmpty(ProductCategoryID))
        {
            TempImage.Rows.Add(new object[] { newName });

            RadListView2.DataSource = TempImage;
            RadListView2.DataBind();
        }
        else
        {
            var oProductImageCategory = new ProductImageCategory();

            oProductImageCategory.ProductImageCategoryInsert(newName, "", "", "", "", "", ProductCategoryID, "True", "");
            RadListView1.Rebind();
        }
    }

    protected void lnkUpOrder_Click(object sender, EventArgs e)
    {
        var lnkUpOrder = (LinkButton)sender;
        var strProductCategoryID = lnkUpOrder.Attributes["rel"];
        var oProductCategory = new ProductCategory();
        oProductCategory.ProductCategoryUpOrder(strProductCategoryID);
        RadGrid1.Rebind();

    }
    protected void lnkDownOrder_Click(object sender, EventArgs e)
    {
        var lnkDownOrder = (LinkButton)sender;
        var strProductCategoryID = lnkDownOrder.Attributes["rel"];
        var oProductCategory = new ProductCategory();
        oProductCategory.ProductCategoryDownOrder(strProductCategoryID);
        RadGrid1.Rebind();
    }
    #endregion

    #region Properties

    private DataTable TempImage
    {
        get { return (DataTable)ViewState["TempImage"]; }
        set { ViewState["TempImage"] = value; }
    }

    #endregion
}