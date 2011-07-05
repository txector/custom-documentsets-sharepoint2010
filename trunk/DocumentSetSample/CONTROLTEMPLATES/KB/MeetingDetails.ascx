<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MeetingDetails.ascx.cs" Inherits="DocumentSetSample.CONTROLTEMPLATES.KB.MeetingDetails" %>

<script type="text/javascript">
    function InitializeMeetingRefNumber() {
        
        //Set Initialize Meeting Ref Number
        var dueDate = $('input[id*="fldOutcomeDueDate"]');

        var dueDateVal = dueDate.val();
        $("#<%= hfRefNumber.ClientID %>").val(dueDateVal + ' client side set');
       
        if (!PreSaveItem()) return false;
    }

</script>
<h2 class="ms-rteElement-H1B" style="margin-bottom: 0px;font-size:1.3em;">Meeting Details:</h2>
<div id="container">
    <table>
        <tr>
            <td>
                Outcome Due Date:
            </td>
            <td>
                 <SharePoint:FormField ID="fldOutcomeDueDate" runat="server" ControlMode="Edit" FieldName="OutcomeDueDate" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:HiddenField ID="hfRefNumber" runat="server" />
            </td>
        </tr>
    </table>
</div>