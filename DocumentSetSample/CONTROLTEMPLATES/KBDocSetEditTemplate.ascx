<%@ Control Language="C#"   AutoEventWireup="false" %>
<%@Assembly Name="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.WebControls"%>
<%@Register TagPrefix="ApplicationPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.ApplicationPages.WebControls"%>
<%@Register TagPrefix="SPHttpUtility" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Utilities"%>
<%@ Register TagPrefix="wssuc" TagName="ToolBar" src="~/_controltemplates/ToolBar.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="~/_controltemplates/ToolBarButton.ascx" %>
<%@ Register TagPrefix="KB" TagName="Meeting" Src="~/_controltemplates/KB/MeetingDetails.ascx" %>
<%@ Register Tagprefix="KB" Namespace="KB.Core" Assembly="KB.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6f920b1b926475ec" %>

<SharePoint:RenderingTemplate id="KBDocumentSetEdit" runat="server">
	<Template>
		<span id='part1'>
			<SharePoint:InformationBar runat="server"/>
			<div id="listFormToolBarTop">
			<wssuc:ToolBar CssClass="ms-formtoolbar" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_RightButtons>
						<SharePoint:NextPageButton ID="NextPageButton1" runat="server"/>
						<KB:DocSetEditFormSaveButton runat="server"/>
						<SharePoint:GoBackButton ID="GoBackButton1" runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</div>
		    <SharePoint:FormToolBar  runat="server"/>
			<SharePoint:ItemValidationFailedMessage  runat="server"/>
			<table class="ms-formtable" style="margin-top: 8px;" border="0" cellpadding="0" cellspacing="0" width="100%">
			<SharePoint:ChangeContentType runat="server"/>
			<SharePoint:FolderFormFields  runat="server"/>
			<SharePoint:ListFieldIterator runat="server"/>
			<SharePoint:ApprovalStatus runat="server"/>
			<SharePoint:FormComponent TemplateName="AttachmentRows" runat="server"/>
			</table>
			<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="ms-formline"><img src="/_layouts/images/blank.gif" width='1' height='1' alt="" /></td></tr></table>
			<table cellpadding="0" cellspacing="0" width="100%" style="padding-top: 7px"><tr><td width="100%">
			<SharePoint:ItemHiddenVersion runat="server"/>
			<SharePoint:ParentInformationField runat="server"/>
            <div class="form-container">
                <KB:Meeting runat="server" />
            </div>
			<SharePoint:InitContentType runat="server"/>
			<wssuc:ToolBar CssClass="ms-formtoolbar" id="toolBarTbl" RightButtonSeparator="&amp;#160;" runat="server">
					<Template_Buttons>
						<SharePoint:CreatedModifiedInfo runat="server"/>
					</Template_Buttons>
					<Template_RightButtons>
						<KB:DocSetEditFormSaveButton runat="server"/>
						<SharePoint:GoBackButton runat="server"/>
					</Template_RightButtons>
			</wssuc:ToolBar>
			</td></tr></table>
		</span>
		<SharePoint:AttachmentUpload runat="server"/>
	</Template>
</SharePoint:RenderingTemplate>