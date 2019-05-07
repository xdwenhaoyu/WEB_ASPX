using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RequestResponse
{
    public partial class RedirectForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue)
            {
                case "USA":
                    Response.Redirect("US.htm");
                    break;
                case "UK":
                    Response.Redirect("UK.htm");
                    break;
                case "France":
                    Response.Redirect("France.htm");
                    break;
            }

        }
    }
}