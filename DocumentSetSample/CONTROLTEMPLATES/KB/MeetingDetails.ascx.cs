using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;

namespace DocumentSetSample.CONTROLTEMPLATES.KB
{
    public partial class MeetingDetails : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SPContext.Current.FormContext.FormMode == SPControlMode.Edit)
            {
                SPContext.Current.FormContext.OnSaveHandler += FormContext_OnSave;
            }

            if (!Page.ClientScript.IsClientScriptIncludeRegistered(typeof(Page), "jQuery1.6"))
                Page.ClientScript.RegisterClientScriptInclude(typeof(Page), "jQuery1.6", "/_layouts/KB/js/jquery-1.6.1.min.js");
        }

        protected void FormContext_OnSave(object sender, EventArgs e)
        {
            //update the list item
            SPContext.Current.Item["MeetingInternalRefNumber"] = hfRefNumber.Value;
            SPContext.Current.Item.Update();
        }
    }
}
