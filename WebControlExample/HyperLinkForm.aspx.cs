using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class HyperLinkForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HyperLink1.Text = "超链接1";
            HyperLink1.NavigateUrl = "HyperLink1.htm";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HyperLink1.Text = "超链接2";
            HyperLink1.NavigateUrl = "HyperLink2.htm";
        }
    }
}