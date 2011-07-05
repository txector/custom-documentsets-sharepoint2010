using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.SharePoint.WebControls;
using System.Web.UI.WebControls;

namespace KB.Core
{
   
    public class DocSetEditFormSaveButton : SaveButton
    {
        internal Button customButton
        {
            get
            {
                Button button = (Button)this.TemplateContainer.FindControl("diidIOSaveItem");
                return button;
            }
        }
        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            //overrides the original Save button javascript and replaces with our method
            customButton.OnClientClick = "InitializeMeetingRefNumber()";
        }
    }
}
