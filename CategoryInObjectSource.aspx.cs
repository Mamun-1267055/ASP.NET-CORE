using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Work01
{
    public partial class RoomsBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >1000)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void CustomValidator1_ServerValidate2(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length > 1000)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}